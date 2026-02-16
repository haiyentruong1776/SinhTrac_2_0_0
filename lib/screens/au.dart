import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';

class Au extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: ' Vân Núi AU',
        iconImage: 'images/mountain.png',
        headerImages: [
          HeaderImage(path: 'images/au_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/au',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- 1 tâm, 2 giao điểm – tâm là vòng tròn kín hướng lên trên.',
            '- Suy nghĩ rất nhanh, có những quyết định tức thì. Là chủng rất thông minh.',
            '- Có lập trường, bảo vệ quan điểm của bản thân.',
            '- Rất kiên định, kiên trì và bền bỉ.',
            '- Tập trung, có mục tiêu.',
            '- Có thể gây áp lực, bắt buộc người khác phải theo mình.',
            '- Không có nhu cầu xã giao, giao tiếp theo phong cách cá nhân.',
            '- Sống nội tâm, khó chia sẻ, khó tiếp cận.',
            '- Thông minh, khả năng hấp thu kiến thức rất lớn. Khả năng tiếp thu trong khoảng thời gian ngắn.',
            '- Là người nghiêm túc, kiên định, tập trung và sẽ quyết tâm hoàn thành nhiệm vụ khi trao cho họ trách nhiệm.',
            '- Cảm xúc ở mức độ cực đoan: Ghét sẽ ghét tới cùng, thương sẽ thương tới cùng.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Có lập trường.',
            '- Bảo vệ quan điểm.',
            '- Rất kiên định, kiên trì và bền bỉ.',
            '- Tập trung, có mục tiêu.',
            '- Thông minh, khả năng hấp thu kiến thức rất lớn.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Có thể gây áp lực, bắt buộc người khác phải theo mình.',
            '- Không có nhu cầu xã giao.',
            '- Sống nội tâm, khó chia sẻ, khó tiếp cận.',
            '- Cảm xúc cực đoan.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Tránh đưa ra kết luận vội vàng.',
            '- Khi không có mục tiêu dễ dẫn đến chán nản mất phương hướng, vì vậy hãy xây dựng mục tiêu rõ ràng và duy trì thực hiện.',
            '- Cần chú ý để cân bằng giữa đưa ra yêu cầu và lắng nghe ý kiến của người khác.',
            '- Có thể gây áp lực, bắt buộc người khác phải theo mình. Học cách tôn trọng ý kiến và tạo điều kiện cho các thành viên đóng góp ý tưởng.',
          ]),
          CardPageData(title: 'Giao tiếp với với vân AU:', items: [
            '- Cần trực tiếp, ngắn gọn vào vấn đề mà không cần đề cập đến các chi tiết không liên quan.',
            '- Tránh ra lệnh, ép buộc mà cần trao đổi, đề nghị, giải thích. Nên nhẹ nhàng vì họ có tự trọng cao.',
            '- Nên có những câu hỏi dẫn dắt để khơi gợi câu trả lời của trẻ, tập cho trẻ chia sẻ dễ dàng hơn.',
            '- Khi kết quả thực hiện thấp, chỉ ngay chỗ sai, đưa ra cách tiếp cận đúng và sửa đổi ngay lập tức.',
            '- Tránh gây áp lực nếu không sẽ có những phản ứng cảm xúc bùng nổ tức thì.',
            '- Người có chủng vân tay AU khó để tiếp xúc. Nhưng khi đã có sự gắn kết nhất định thì AU – AR có khả năng duy trì mối quan hệ lâu bền, gắn kết.',
          ]),
        ],
      ),
    );
  }
}
