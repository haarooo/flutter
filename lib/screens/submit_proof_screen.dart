import 'package:flutter/material.dart';

class SubmitProofScreen extends StatelessWidget {
  final Function(String) onNavigate;

  const SubmitProofScreen({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
            decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFF3F4F6)))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => onNavigate('roomDashboard'),
                    ),
                  ],
                ),
                const Text('인증 제출', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                const Text('여름 전까지 4주 운동방', style: TextStyle(fontSize: 14, color: Color(0xFF6B7280))),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFBFDBFE)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF3B82F6),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.access_time, color: Colors.white, size: 20),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '오늘 마감 시간',
                                style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF2563EB)),
                              ),
                              const SizedBox(height: 2),
                              const Text(
                                '23:00까지 제출 가능',
                                style: TextStyle(fontSize: 14, color: Color(0xFF2563EB)),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          '5:30',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF3B82F6)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    '오늘의 운동/식단을 기록해보세요',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF374151)),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: '예: 하체 운동 40분 완료\n스쿼트 3세트, 런지 3세트 완료했어요!',
                      filled: true,
                      fillColor: const Color(0xFFF8FAFC),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    '사진 또는 동영상 업로드',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF374151)),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(child: _buildUploadButton(Icons.camera_alt, '카메라', const Color(0xFF3B82F6), const Color(0xFFEFF6FF))),
                      const SizedBox(width: 12),
                      Expanded(child: _buildUploadButton(Icons.image_outlined, '사진', const Color(0xFF8B5CF6), const Color(0xFFF5F3FF))),
                      const SizedBox(width: 12),
                      Expanded(child: _buildUploadButton(Icons.videocam_outlined, '동영상', const Color(0xFFEC4899), const Color(0xFFFCE7F3))),
                    ],
                  ),
                  const SizedBox(height: 16),
                  AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFF3F4F6), Color(0xFFE5E7EB)],
                        ),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFD1D5DB)),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.image_outlined, size: 48, color: Color(0xFF9CA3AF)),
                          SizedBox(height: 8),
                          Text(
                            '업로드한 사진/영상 미리보기',
                            style: TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFBEB),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFFDE68A)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.info_outline, color: Color(0xFFD97706), size: 20),
                            SizedBox(width: 8),
                            Text(
                              '인증 제출 안내',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF78350F)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '• 텍스트 또는 사진/동영상 중 하나는 필수입니다',
                          style: TextStyle(fontSize: 12, color: Color(0xFF92400E)),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '• 제출 후 다른 멤버가 확인하면 인증이 완료됩니다',
                          style: TextStyle(fontSize: 12, color: Color(0xFF92400E)),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '• 본인은 자기 인증을 확인할 수 없습니다',
                          style: TextStyle(fontSize: 12, color: Color(0xFF92400E)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
            decoration: const BoxDecoration(border: Border(top: BorderSide(color: Color(0xFFF3F4F6)))),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => onNavigate('proofFeed'),
                icon: const Icon(Icons.upload_outlined, size: 20),
                label: const Text('인증 제출하기', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3B82F6),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUploadButton(IconData icon, String label, Color iconColor, Color bgColor) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [bgColor, bgColor.withOpacity(0.7)],
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: iconColor.withOpacity(0.3)),
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: iconColor, size: 24),
            const SizedBox(height: 8),
            Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: iconColor)),
          ],
        ),
      ),
    );
  }
}
