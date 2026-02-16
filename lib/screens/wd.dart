import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';

class Wd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: 'Vân Đại Bàng WD',
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WD.png', widthFactor: 0.2),
          HeaderImage(path: 'images/wd_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/wd',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- 2 tâm, 2 giao điểm – hình dạng hai dấu móc ngược nhau.',
            '- Có thể tương tác và đa dạng đối tượng, thuận lợi trong các lĩnh vực giao tiếp và quan hệ công chúng.',
            '- Thích ứng cao với môi trường , hội nhập nhanh. Có thể thích nghi và chấp nhận những điều mới mẻ, những ý tưởng và khái niệm mới dễ dàng.',
            '- Suy nghĩ theo nhiều chiều hướng, đa góc nhìn. Luôn có "phương án B", thực hiện nhiều phương pháp khác nhau để đạt được mục tiêu.',
            '- Tò mò, hứng thú nhiều lĩnh vực, thích điều mới mẻ và sự đổi mới. Có xu hướng theo đuổi nhiều mục tiêu, khó khăn trong việc kiểm soát quá trình thực hiện.',
            '- Thiên hướng suy nghĩ quá nhiều dẫn đến sự mất tập trung và thay đổi mục tiêu hay định hướng.',
            '- Dễ bị người khác ảnh hưởng và làm lung lay. Hay do dự, lưỡng lự khi suy nghĩ ở nhiều khía cạnh khác nhau.',
            '- Linh hoạt, có nhiếu cách ứng xử khác nhau, thay đổi nguyên tắc và lập trường tùy thuộc vào tình thế.',
            '- Có khả năng mở rộng và liên kết thông tin, khéo léo hài hòa giữa nguồn lực và thông tin.',
            '- Nóng tính nhưng có thể kiểm soát được.',
            '- Đề cao tinh thần hợp tác đội nhóm, thích hỏi và chia sẻ quan điểm với mọi người xung quanh.',
            '- Luôn muốn được khen ngợi và tôn trọng.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Mẫu người thân thiện, nhiệt tình. Có tố chất, năng lực và nhiều kỹ năng, thường giỏi ở nhiều mặt và hứng thú với nhiều lĩnh vực khác.',
            '- Có khả năng giao tiếp tốt, thích chia sẻ.',
            '- Có khả năng giải quyết vấn đề theo nhiều chiều hướng khác nhau bằng nhiều cách khác nhau.',
            '- Rất linh hoạt và thoải mái, thích nghi tốt ở mọi hoàn cảnh khác nhau "ở bầu thì tròn, ở ống thì dài".',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Có thể đạt được những thành quả cao từ những việc bạn cảm thấy hứng thú, tuy nhiên rất mau chóng chán nản và thường không làm đến nơi đến chốn. ',
            '- Khó tập trung.',
            '- Việc tập trung quá nhiều mục tiêu cùng một lúc sẽ khó đạt được mục tiêu hoàn hảo.',
            '- Không thích thảo kế hoạch, thường làm theo phong cách "nước đến chân mới nhảy".',
            '- Không thích làm những công việc đòi hỏi sự lặp đi lặp lại mang tính khuôn khổ.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Giỏi giao tiếp nên sẽ là 1 người sale đại tài.',
            '- Kế hoạch phải được lập trước thật rõ ràng, cụ thể để nhìn rõ vấn đề, giá trị, mục tiêu của mỗi việc mình chọn làm.',
            '- Học và thực hành phương pháp quản lý tốt thời gian, Ưu tiên công việc theo tầm quan trọng và độ cấp bách. Thực hiện lần lượt từng việc.',
            '- Tăng cường kỹ năng chuyên môn. Tránh việc trở thành "thợ" của tất cả ngành nghề mà không chuyên về nghề nào cụ thể.',
            '- Duy trì tính nhất quán của các nguyên tắc và quan điểm.',
            '- Tự tạo môi trường làm việc thoải mái.',
            '- Hạn chế suy nghĩ quá nhiều dễ dẫn đến mệt mỏi, kiệt sức, hoang mang.',
            '- Chia sẻ trở ngại với những người xung quanh để cùng nhau tìm giải pháp.',
          ]),
          CardPageData(title: 'Giao tiếp với với vân WD:', items: [
            '- Tôn trọng và chỉ nên đề cập khuyết điểm/ lỗi sai của họ ở nơi riêng tư.',
            '- Hướng dẫn phương pháp học tập kết hợp: vừa đa dạng vừa chuyên sâu.',
            '- Hướng dẫn và chỉ dạy cách quản lý thời gian cho chủng WD từ sớm và có mốc hoàn thành.',
            '- Khen ngợi và có thưởng nếu chủng WD hoàn thành tốt nhiệm vụ.',
            '- Đưa ra lựa chọn cùng lợi ích của việc cần làm thay vì đưa ra mệnh lệnh trực tiếp.',
            '- Định hướng và tập cho trẻ tự ra quyết định.',
          ]),
        ],
      ),
    );
  }
}
