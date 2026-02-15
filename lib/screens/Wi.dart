import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/SubTypeScreen.dart';

class Wi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: 'Vân Đại Bàng WI',
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WI.png', widthFactor: 0.2),
          HeaderImage(path: 'images/wi_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/wi',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- 1 tâm, 2 giao điểm – tâm dài',
            '- Có thể tương tác và đa dạng đối tượng, thuận lợi trong các lĩnh vực giao tiếp và quan hệ công chúng.',
            '- Thích ứng, hội nhập nhanh với môi trường. Tìm kiếm cơ hội, thách thức nhưng chưa hết mình, do luôn có mâu thuẫn nội tại.',
            '- Suy nghĩ theo nhiều chiều hướng, đa góc nhìn. Luôn có "phương án B", thực hiện nhiều phương pháp khác nhau để đạt được mục tiêu.',
            '- Tò mò, hứng thú nhiều lĩnh vực, thích điều mới mẻ và thử thách, theo đuổi nhiều mục tiêu, nhưng vẫn có nhiều cân nhắc.',
            '- Tiêu chuẩn cao, phân tích tỉ mỉ, hay đặt ra những câu hỏi, quan tâm đến chất lượng và sự hoàn hảo.',
            '- Thiên hướng suy nghĩ quá nhiều dẫn đến sự mất trung, dễ bị nản lòng khi mục tiêu không như mong muốn.',
            '- Hay do dự, lưỡng lự khi suy nghĩ ở nhiều khía cạnh khác nhau. Đưa ra những cách tiếp cận bảo thủ, khả năng kiểm soát chi tiết.',
            '- Đề cao tinh thần hợp tác đội nhóm, thích hỏi và chia sẻ quan điểm với mọi người xung quanh.',
            '- Nóng tính nhưng có thể kiểm soát được. Tinh thần trách nhiệm cao.',
            '- Có tinh thần trách nhiệm cao đối với công việc và gia đình.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Là người thân thiện, nhiệt tình, thẳng thắn, có năng lực và thoải mái.',
            '- Dễ dàng thích nghi trong nhiều điều kiện sống khác nhau.',
            '- Họ có trách nhiệm với gia đình, công việc, khá kỹ lưỡng trong tình cảm và không hề sống theo bản năng mà họ điều khiển cuộc sống của mình dựa vào lý trí.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Ít khi làm việc đến nơi đến chốn mà hay nửa vời.',
            '- Nếu buộc họ phải cùng lúc hoàn thành nhiều công việc thì hiệu quả chắc chắn sẽ không cao.',
            '- Không thích những gì lặp lại.',
            '- Có phần khép kín, tính tình nóng nảy, một khi họ đã bộc phát thì mọi chuyện khó có thể kiểm soát được.',
            '- Một điểm yếu khác của WI là rất hay quên.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Muốn thành công cần nghiêm túc hơn trong thái độ làm việc cũng như cách sống, học cách lập kế hoạch trước khi bắt tay vào làm việc gì.',
            '- Cởi mở hơn, sẵn sàng chia sẻ, chấp nhận phê phán để hoàn thiện bản thân hơn.',
            '- Cần có kế hoạch phải được lập trước thật rõ ràng, cụ thể để nhìn rõ vấn đề, giá trị, mục tiêu của mỗi việc mình chọn làm.',
            '- Vì đa mục tiêu và luôn có nhiều góc nhìn khác nhau nên WI cần học và thực hành phương pháp quản lý tốt thời gian.',
            '- WI cần ưu tiên công việc theo tầm quan trọng và độ cấp bách và thực hiện lần lượt từng việc.',
            '- WI cũng cần tăng cường kỹ năng chuyên môn để tránh việc trở thành "thợ" của tất cả ngành nghề mà không chuyên về nghề nào cụ thể.',
            '- WI hay suy nghĩ và hành động theo số đông, lập trường tư tưởng tùy thuộc tình thế nên cần học cách duy trì tính nhất quán của các nguyên tắc và quan điểm.',
            '- WI không thích làm những công việc nhàm chán lặp đi lặp lại nên cần tự tạo môi trường làm việc thoải mái.',
            '- WI cũng cần hạn chế suy nghĩ quá nhiều dễ dẫn đến mệt mỏi, kiệt sức, hoang mang.',
            '- WI có cái tôi cao và tính hình tượng cao nên thường ít khi chia sẻ khó khăn của bản thân với mọi người nên cần học cách chia sẻ trở ngại với những người xung quanh để cùng nhau tìm giải pháp.',
          ]),
          CardPageData(title: 'Giao tiếp với với vân WI:', items: [
            '- Giúp WI xác định được chính xác được mất để tránh việc lưỡng lự đắn đo trong quá trình thực hiện.',
            '- Giao tiếp với người có chủng vân tay WI nên tập trung vào điều họ quan tâm, chân thành và tích cực để truyền cảm hứng.',
            '- Tôn trọng và chỉ nên đề cập khuyết điểm/ lỗi sai của WI ở nơi riêng tư.',
            '- Hướng dẫn WI phương pháp học tập kết hợp: vừa đa dạng vừa chuyên sâu.',
            '- Hướng dẫn WI cách quản lý thời gian cho trẻ từ sớm và có mốc hoàn thành.',
            '- Khen ngợi và có thưởng nếu WI hoàn thành tốt nhiệm vụ.',
            '- Đưa ra lựa chọn cùng lợi ích của việc cần làm thay vì đưa ra mệnh lệnh trực tiếp cho WI.',
          ]),
        ],
      ),
    );
  }
}
