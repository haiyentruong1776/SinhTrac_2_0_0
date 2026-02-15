import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/SubTypeScreen.dart';

class Wc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: 'Vân Đại Bàng WC',
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WC.png', widthFactor: 0.4),
          HeaderImage(path: 'images/wc_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/wc',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- 2 tâm, 2 giao điểm – hai dòng xoáy tạo thành vòng tròn thái cực xoáy tròn vào nhau.',
            '- Người có cái nhìn đa chiều về một vấn đề, cũng từ đó bạn có thể đọc vị được cảm xúc và nhu cầu của người đối diện.',
            '- Trong những mối quan hệ hay công việc, bạn nhìn rõ ràng được đâu là điểm mạnh và đâu là điểm chưa mạnh trong đó và cũng chính từ đó bạn có thể đọc vị rõ ràng được vấn đề và nhu cầu của mối quan hệ hay công việc đó. Đây là điểm mạnh tuyệt vời mà không phải ai cũng có được.',
            '- Cũng chính từ sự hướng ngoại, linh hoạt, giao tiếp trung tính và khả năng nhìn nhận đa chiều vấn đề mà WC có tố chất về đàm phán, thương lượng.',
            '- Ở mặt khác, bạn là người đa mục tiêu, đa kế hoạch và thích làm nhiều việc cùng một lúc.',
            '- Khi bạn vào làm rồi, dù làm được hay không làm được thì bạn hay bị cả thèm chóng chán và hay thích đổi mới công việc.',
            '- Là những người hay suy nghĩ nhiều, điều đó dẫn đến mệt mỏi cho bạn.',
            '- Bạn hứng thú với những thử thách, khám phá những điều mới lạ và có phong cách độc đáo. Đó cũng chính là những KEY giúp bạn có những bước tiến đột phá trong đời.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Đa mục tiêu, có sự đa dạng trong các kế hoạch, có thể cùng đồng thời thực hiện và làm nhiều việc khác nhau cùng một lúc, nhiều mục tiêu.',
            '- Nhiệt tình, thân thiện, thiết lập mối quan hệ nhanh chóng.',
            '- Có khả năng nhìn thấy hai mặt của một vấn đề.',
            '- Khả năng giao tiếp, phối hợp, thương lượng tốt.',
            '- Sống tình cảm, thích chia sẻ.',
            '- Dễ thích nghi, thích tự do, không ràng buộc.',
            '- Suy nghĩ nhiều, PR tốt, giàu ý tưởng.',
            '- Đề cao tinh thần hợp tác đội nhóm, thích hỏi và chia sẻ quan điểm với mọi người xung quanh. Khả năng phối hợp trong công việc cao.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Làm việc theo phong cách "nước đến chân mới nhảy".',
            '- Do dự, tiêu chuẩn kép.',
            '- Dễ thay đổi, thiếu kế hoạch.',
            '- Đốt cháy giai đoạn.',
            '- Đa mục tiêu đôi khi dễ bị lan man, mất tập trung.',
            '- Hay suy nghĩ nhiều, điều đó dẫn đến mệt mỏi cho bạn.',
            '- Chủng WC không phải là nhóm người quyết đoán, thường xuyên chần chừ, dễ thay đổi, họ làm việc theo cảm xúc, ít khi lập kế hoạch lâu dài.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Nên học cách lập kế hoạch trong công việc cũng như cuộc sống, làm lần lượt từng công việc một thay vì ôm đồm cùng lúc nhiều việc.',
            '- Khả năng giao tiếp của WC rất tốt nên đừng quên tận dụng điểm mạnh này của mình để tiến xa hơn trong sự nghiệp.',
            '- Có tố chất về đàm phán, thương lượng.',
            '- Hãy đổi mới cách làm việc, bối cảnh làm việc chứ đừng nên đổi mới công việc nếu như thực sự mình chưa cần đổi mới.',
            '- Hãy biết cách phân tích được mất trong vấn đề, hay nhiều việc có thể xét trên góc độ việc bắt buộc, cần hay nên làm.',
            '- Hãy biết thách thức chính bản thân mình liên tục để tạo ra những sức bật của cuộc đời.',
          ]),
          CardPageData(title: 'Giao tiếp với với vân WC:', items: [
            '- Không nên áp đặt, nên thông báo và thảo luận trước kế hoạch. Đưa ra sự lựa chọn cùng lợi ích việc cần làm thay vì mệnh lệnh.',
            '- Định hướng và theo sát kế hoạch, và có mốc thời gian hoàn thành.',
          ]),
        ],
      ),
    );
  }
}
