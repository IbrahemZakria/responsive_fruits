import 'dart:io';
import 'package:flutter/material.dart';

class CustomUserAvatar extends StatelessWidget {
  final double size;
  final String? imageUrl; // image from network
  final File? fileImage; // image from local File
  final String? initials; // fallback initials like "IB"
  final Color backgroundColor;
  final Color initialsColor;
  final double borderWidth;
  final Color? borderColor;
  final bool showStatus; // show status indicator (bottom-right)
  final Color statusColor; // online/offline color
  final double statusSize;
  final bool showEditIcon; // small edit pencil overlay
  final VoidCallback? onTap;

  const CustomUserAvatar({
    super.key,
    this.size = 72,
    this.imageUrl,
    this.fileImage,
    this.initials,
    this.backgroundColor = const Color(0xFFECEFF1),
    this.initialsColor = Colors.black87,
    this.borderWidth = 2,
    this.borderColor,
    this.showStatus = false,
    this.statusColor = Colors.green,
    this.statusSize = 16,
    this.showEditIcon = false,
    this.onTap,
  });

  Widget _buildImage(BuildContext context) {
    // Priority: local file -> network -> initials placeholder
    if (fileImage != null) {
      return ClipOval(
        child: Image.file(
          fileImage!,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      );
    }

    if (imageUrl != null && imageUrl!.isNotEmpty) {
      return ClipOval(
        child: Image.network(
          imageUrl!,
          width: size,
          height: size,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, progress) {
            if (progress == null) return child;
            return Container(
              width: size,
              height: size,
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                value: progress.expectedTotalBytes != null
                    ? progress.cumulativeBytesLoaded /
                          (progress.expectedTotalBytes ?? 1)
                    : null,
                strokeWidth: 2,
              ),
            );
          },
          errorBuilder: (context, error, stackTrace) => _initialsPlaceholder(),
        ),
      );
    }

    return _initialsPlaceholder();
  }

  Widget _initialsPlaceholder() {
    final String text = (initials ?? '').trim();
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      alignment: Alignment.center,
      child: Text(
        text.isNotEmpty ? text : '',
        style: TextStyle(
          color: initialsColor,
          fontSize: size * 0.36,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final borderClr = borderColor ?? Theme.of(context).scaffoldBackgroundColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: SizedBox(
            width: size,
            height: size,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Border + Image/Placeholder
                Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: borderClr, width: borderWidth),
                  ),
                  child: ClipOval(child: _buildImage(context)),
                ),

                // Status indicator (bottom-right)
                if (showStatus)
                  Positioned(
                    right: -borderWidth / 2,
                    bottom: -borderWidth / 2,
                    child: Container(
                      width: statusSize,
                      height: statusSize,
                      decoration: BoxDecoration(
                        color: Colors.white, // outer ring
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Container(
                          width: statusSize - 6,
                          height: statusSize - 6,
                          decoration: BoxDecoration(
                            color: statusColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                // Small edit icon overlay (top-right)
                if (showEditIcon)
                  Positioned(
                    right: -4,
                    top: -4,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: onTap,
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 4),
                            ],
                          ),
                          child: Icon(
                            Icons.edit,
                            size: size * 0.18,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
