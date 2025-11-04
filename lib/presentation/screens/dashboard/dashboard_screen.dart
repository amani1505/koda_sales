import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../providers/dashboard_provider.dart';
import '../../widgets/stat_card.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardState = ref.watch(dashboardNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: FadeInDown(
          duration: const Duration(milliseconds: 600),
          child: const Text('Dashboard'),
        ),
        actions: [
          FadeInDown(
            delay: const Duration(milliseconds: 200),
            duration: const Duration(milliseconds: 600),
            child: IconButton(
              icon: const Icon(Icons.notifications_outlined),
              onPressed: () {},
            ),
          ),
          FadeInDown(
            delay: const Duration(milliseconds: 400),
            duration: const Duration(milliseconds: 600),
            child: IconButton(
              icon: const Icon(Icons.card_giftcard_outlined),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(dashboardNotifierProvider.notifier).refresh();
        },
        child: dashboardState.when(
          data: (dashboard) => SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            child: AnimationLimiter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 600),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: [
                    // Welcome Banner
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.blue.shade50,
                            Colors.white,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.1),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                        border: Border.all(
                          color: Colors.blue.withOpacity(0.1),
                          width: 1,
                        ),
                      ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Robinson A Emmanuel',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade800,
                                  ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blue.shade100,
                                    Colors.blue.shade50,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.blue.shade200,
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.person,
                                    size: 14,
                                    color: Colors.blue.shade700,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    'Salesperson',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue.shade700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                    ),
                    const SizedBox(height: 24),

                    // Stats Cards
                    Row(
                      children: [
                        Expanded(
                          child: StatCard(
                            title: 'Total Customers',
                            value: dashboard.totalCustomers.toString(),
                            icon: Icons.people_rounded,
                            color: Colors.blue,
                            animationDelay: 200,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: StatCard(
                            title: 'Total Categories',
                            value: dashboard.totalCategories.toString(),
                            icon: Icons.category_rounded,
                            color: Colors.teal,
                            animationDelay: 400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: StatCard(
                            title: 'Messages Sent',
                            value:
                                '${dashboard.totalMessagesSent} / ${dashboard.totalMessagesAssigned}',
                            icon: Icons.send_rounded,
                            color: Colors.green,
                            animationDelay: 600,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: StatCard(
                            title: 'Message Fail',
                            value: dashboard.totalMessageFail.toString(),
                            icon: Icons.error_outline_rounded,
                            color: Colors.orange,
                            animationDelay: 800,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),

                    // Invoice Status Chart
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white,
                            Colors.grey.shade50,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                        border: Border.all(
                          color: Colors.grey.shade100,
                          width: 1,
                        ),
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.pink.withOpacity(0.15),
                                    Colors.pink.withOpacity(0.05),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.pie_chart_rounded,
                                color: Colors.pink.shade400,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Invoice Status',
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade800,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 220,
                          child: PieChart(
                          PieChartData(
                            sectionsSpace: 2,
                            centerSpaceRadius: 40,
                            sections: [
                              PieChartSectionData(
                                value: dashboard.invoiceStatus.pendingInvoices
                                    .toDouble(),
                                color: Colors.pink.shade400,
                                title: 'Pending',
                                radius: 60,
                                titleStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              PieChartSectionData(
                                value: dashboard.invoiceStatus.fullPaidInvoices
                                    .toDouble(),
                                color: Colors.teal.shade400,
                                title: 'Paid',
                                radius: 60,
                                titleStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              PieChartSectionData(
                                value: dashboard
                                    .invoiceStatus.partialPaidInvoices
                                    .toDouble(),
                                color: Colors.orange.shade400,
                                title: 'Partial',
                                radius: 60,
                                titleStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                    const SizedBox(height: 24),

                    // Top Customers Chart
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white,
                            Colors.grey.shade50,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                        border: Border.all(
                          color: Colors.grey.shade100,
                          width: 1,
                        ),
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blue.withOpacity(0.15),
                                    Colors.blue.withOpacity(0.05),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.bar_chart_rounded,
                                color: Colors.blue.shade400,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Top 5 Customers By Loads',
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade800,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 280,
                          child: BarChart(
                          BarChartData(
                            alignment: BarChartAlignment.spaceAround,
                            maxY: dashboard.topCustomers
                                .map((c) => c.numberOfLoads)
                                .reduce((a, b) => a > b ? a : b) *
                                1.2,
                            barGroups: dashboard.topCustomers
                                .asMap()
                                .entries
                                .map((entry) {
                              return BarChartGroupData(
                                x: entry.key,
                                barRods: [
                                  BarChartRodData(
                                    toY: entry.value.numberOfLoads,
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Colors.blue.shade300,
                                        Colors.blue.shade600,
                                      ],
                                    ),
                                    width: 35,
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(8),
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                            titlesData: FlTitlesData(
                              leftTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: true),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (value, meta) {
                                    if (value.toInt() < dashboard.topCustomers.length) {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Text(
                                          dashboard.topCustomers[value.toInt()]
                                              .customerName,
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                      );
                                    }
                                    return const Text('');
                                  },
                                ),
                              ),
                              rightTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              topTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                            ),
                            gridData: const FlGridData(show: false),
                            borderData: FlBorderData(show: false),
                          ),
                        ),
                      ),
                    ],
                  ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text('Error: $error'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    ref.read(dashboardNotifierProvider.notifier).refresh();
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
