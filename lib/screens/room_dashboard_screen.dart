import 'package:flutter/material.dart';

class RoomDashboardScreen extends StatelessWidget {
  final Function(String) onNavigate;

  const RoomDashboardScreen({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () => onNavigate('home'),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '여름 전까지 4주 운동방',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '친구들과 함께 운동 습관 만들기',
                                style: TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFF22C55E),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            '진행중',
                            style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(height: 1, color: const Color(0xFFF3F4F6)),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 100),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Color(0xFF3B82F6), Color(0xFF2563EB)]),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [BoxShadow(color: Color(0xFF3B82F6).withOpacity(0.3), blurRadius: 12, offset: Offset(0, 4))],
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('오늘 인증 현황', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                Row(
                                  children: [
                                    Icon(Icons.access_time, color: Colors.white, size: 16),
                                    SizedBox(width: 4),
                                    Text('23:00 마감', style: TextStyle(color: Colors.white, fontSize: 14)),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 12,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: FractionallySizedBox(
                                      alignment: Alignment.centerLeft,
                                      widthFactor: 0.5,
                                      child: Container(
                                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(6)),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Text('1/2', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text('목표까지 1개 남았어요!', style: TextStyle(color: Colors.blue.shade100, fontSize: 14)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xFFF3F4F6)),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('내 인증 현황', style: TextStyle(fontWeight: FontWeight.bold)),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF3B82F6),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Text('확인 대기', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                _buildStatBox('2', '제출 완료', Color(0xFF3B82F6)),
                                SizedBox(width: 16),
                                _buildStatBox('1', '확인 완료', Color(0xFF22C55E)),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                _buildStatBox('0', '남은 제출', Color(0xFFF97316)),
                                SizedBox(width: 16),
                                _buildStatBox('1', '남은 확인', Color(0xFF9CA3AF)),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEFF6FF),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.info_outline, color: Color(0xFF3B82F6), size: 16),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      '다른 멤버가 확인해주면 인증이 완료됩니다',
                                      style: TextStyle(fontSize: 12, color: Color(0xFF2563EB)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xFFF3F4F6)),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('멤버별 현황', style: TextStyle(fontWeight: FontWeight.bold)),
                                GestureDetector(
                                  onTap: () => onNavigate('memberStatus'),
                                  child: const Text('전체보기', style: TextStyle(fontSize: 14, color: Color(0xFF3B82F6), fontWeight: FontWeight.w600)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            _buildMemberCard('김', 'owner_124909', '방장', '제출 2 · 확인 1', '확인대기', Color(0xFF3B82F6)),
                            const SizedBox(height: 12),
                            _buildMemberCard('이', 'member_124909', null, '제출 2 · 확인 0', '확인대기', Color(0xFF3B82F6)),
                            const SizedBox(height: 12),
                            _buildMemberCard('박', 'tester3', null, '제출 1 · 확인 1', '제출필요', Color(0xFFF97316)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => onNavigate('submitProof'),
                      icon: const Icon(Icons.upload_outlined, size: 20),
                      label: const Text('인증 올리기', style: TextStyle(fontWeight: FontWeight.w600)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3B82F6),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () => onNavigate('proofFeed'),
                      icon: const Icon(Icons.check_circle_outline, size: 20),
                      label: const Text('인증 확인하기', style: TextStyle(fontWeight: FontWeight.w600)),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF3B82F6),
                        side: const BorderSide(color: Color(0xFF3B82F6), width: 2),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatBox(String value, String label, Color color) {
    return Expanded(
      child: Column(
        children: [
          Text(value, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: color)),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280))),
        ],
      ),
    );
  }

  Widget _buildMemberCard(String initial, String name, String? role, String stats, String status, Color statusColor) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [statusColor, statusColor.withOpacity(0.7)]),
              shape: BoxShape.circle,
            ),
            child: Center(child: Text(initial, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(name, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                    if (role != null) ...[
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEAB308),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(role, style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 2),
                Text(stats, style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280))),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: statusColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(status, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
}
