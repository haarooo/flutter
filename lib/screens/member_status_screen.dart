import 'package:flutter/material.dart';

class MemberStatusScreen extends StatelessWidget {
  final Function(String) onNavigate;

  const MemberStatusScreen({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
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
                const Text('멤버별 현황', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                const Text('여름 전까지 4주 운동방', style: TextStyle(fontSize: 14, color: Color(0xFF6B7280))),
              ],
            ),
          ),
          Container(height: 1, color: const Color(0xFFF3F4F6)),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    children: [
                      _buildSummaryBox('1', '완료', Color(0xFF22C55E)),
                      const SizedBox(width: 12),
                      _buildSummaryBox('2', '확인대기', Color(0xFF3B82F6)),
                      const SizedBox(width: 12),
                      _buildSummaryBox('0', '제출필요', Color(0xFFF97316)),
                    ],
                  ),
                  const SizedBox(height: 24),
                  _buildMemberCard(
                    initial: '김',
                    name: 'owner_124909',
                    role: '방장',
                    subtitle: '김철수',
                    submitted: '2',
                    confirmed: '1',
                    progress: 0.5,
                    status: '확인대기',
                    statusColor: const Color(0xFF3B82F6),
                    borderColor: const Color(0xFFF3F4F6),
                  ),
                  const SizedBox(height: 16),
                  _buildMemberCard(
                    initial: '이',
                    name: 'member_124909',
                    subtitle: '이영희',
                    submitted: '2',
                    confirmed: '0',
                    progress: 0.0,
                    status: '확인대기',
                    statusColor: const Color(0xFF3B82F6),
                    borderColor: const Color(0xFFBFDBFE),
                  ),
                  const SizedBox(height: 16),
                  _buildMemberCard(
                    initial: '박',
                    name: 'tester3',
                    subtitle: '박민수',
                    submitted: '1',
                    confirmed: '1',
                    progress: 0.5,
                    status: '제출필요',
                    statusColor: const Color(0xFFF97316),
                    borderColor: const Color(0xFFFED7AA),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryBox(String value, String label, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFF3F4F6)),
        ),
        child: Column(
          children: [
            Text(value, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color)),
            const SizedBox(height: 4),
            Text(label, style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280))),
          ],
        ),
      ),
    );
  }

  Widget _buildMemberCard({
    required String initial,
    required String name,
    String? role,
    required String subtitle,
    required String submitted,
    required String confirmed,
    required double progress,
    required String status,
    required Color statusColor,
    required Color borderColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderColor, width: 2),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [statusColor, statusColor.withOpacity(0.7)]),
                  shape: BoxShape.circle,
                ),
                child: Center(child: Text(initial, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                        if (role != null) ...[
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEAB308),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(role, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(subtitle, style: const TextStyle(fontSize: 14, color: Color(0xFF6B7280))),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(status == '확인대기' ? Icons.access_time : Icons.warning_amber_outlined, color: Colors.white, size: 12),
                    const SizedBox(width: 4),
                    Text(status, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildStatBox(submitted, '제출 완료', Color(0xFF3B82F6)),
              const SizedBox(width: 12),
              _buildStatBox(confirmed, '확인 완료', Color(0xFF22C55E)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F4F6),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: progress,
                    child: Container(
                      decoration: BoxDecoration(
                        color: status == '제출필요' ? const Color(0xFF22C55E) : const Color(0xFF3B82F6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text('$confirmed/2', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFF6B7280))),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(Icons.info_outline, color: statusColor, size: 16),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    status == '확인대기' ? '친구의 확인을 기다리고 있어요' : '인증을 1개 더 제출해야 해요',
                    style: TextStyle(fontSize: 12, color: statusColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatBox(String value, String label, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFFF8FAFC),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(value, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color)),
            const SizedBox(height: 4),
            Text(label, style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280))),
          ],
        ),
      ),
    );
  }
}
