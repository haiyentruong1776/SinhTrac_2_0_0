import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';

class Ar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: ' Vân Núi AR',
        iconImage: 'images/mountain.png',
        headerImages: [
          HeaderImage(path: 'images/AR.png', widthFactor: 0.3),
          HeaderImage(path: 'images/ar_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/ar',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- 1 tâm, 2 giao điểm – tâm là vòng tròn hở hướng về ngón út.',
            '- Có thể nói chủng AR gần giống với chủng vân tay LU. Các đặc tính tương tự nhưng sẽ phần nào đó rõ nét, nổi trội hơn. Bình tĩnh nhưng đồng thời cũng có phần nhạy cảm.',
            '- Hòa đồng, cởi mở, thân thiện nhưng ít chủ động tạo mối quan hệ. Nhạy cảm trong giao tiếp, thích quan sát.',
            '- Nhiệt tình, chân thành và dễ cảm thông cho vấn đề của người khác. Rất coi trọng các mối quan hệ.',
            '- Biết lắng nghe và chấp nhận ý kiến của người khác.',
            '- Chu đáo, biết quan tâm mọi người, sống tình cảm, thích tự do.',
            '- Là một người dễ bị người khác ảnh hưởng.',
            '- AR có thể nói là phiên bản mạnh hơn của LU, có sự khác biệt đó là có mục tiêu rõ ràng hơn những vẫn dễ bị thay đổi.',
            '- Tập trung, có mục tiêu.',
            '- Thông minh, nhạy bén và có khả năng tiếp thu kiến thức rất cao, có khả năng tiếp thu kiến thức trong khoảng thời gian ngắn.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Có mục tiêu rõ ràng, sẵn sàng đạt mục tiêu.',
            '- Nhạy cảm, cẩn trọng.',
            '- Thông minh, khả năng hấp thu kiến thức cũng rất lớn.',
            '- Có khả năng tập trung cao trong khoảng thời gian ngắn.',
            '- Khả năng bắt chước vượt trội, học nhanh trong môi trường và trong xã hội.',
            '- Mềm mại, nhẹ nhàng và cởi mở; lãng mạn, thích tự do và chỉ sống cho hiện tại.',
            '- Suy nghĩ linh hoạt và tương thích.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Nhạy cảm.',
            '- Mục tiêu vẫn dễ bị thay đổi.',
            '- Dễ bị tác động bởi những người xung quanh và môi trường.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Làm việc theo cảm tính, dễ thay đổi nguyên tắc và kế hoạch đã vạch ra. Vì vậy nên lập kế hoạch làm việc rõ ràng, chi tiết, tập trung vào mục tiêu và giám sát tiến độ thực hiện. Tham gia các khóa học về ra quyết định và lập mục tiêu.',
            '- Học để trở thành người hướng dẫn và chịu trách nhiệm với quy trình làm việc, đưa ra giải pháp cho vấn đề phát sinh.',
            '- Công việc, kế hoạch có thể bị trì hoãn vì lối sống tình cảm. Chọn một người tri kỷ đáng tin cậy để động viên và khích lệ, đôn đốc việc thực hiện mục tiêu.',
            '- Chủ động giao tiếp. Tham gia các hoạt động cộng đồng khác nhau, chủ động nhận vị trí lãnh đạo, xây dựng sự tự tin. Tham khảo tự truyện của những người thành công.',
            '- Học cách nói "không" với người khác một cách thích hợp khi cần thiết.',
          ]),
          CardPageData(title: 'Giao tiếp với với vân AR:', items: [
            '- Khi giao tiếp với mẫu người này, cần chân thành, nhẹ nhàng để tạo sự tin tưởng, giúp cuộc nói chuyện cởi mở và hiệu quả hơn.',
            '- Thể hiện sự quan tâm, dành thời gian để hỏi và trả lời, khen ngợi, động viên.',
            '- Cần làm mẫu cụ thể để dễ dàng bắt nhịp trang học tập.',
            '- Cần theo dõi, thường xuyên khuyến khích và động viên trẻ kịp thời để truyền sự tự tin, tránh việc bỏ dở nửa chừng theo tâm trạng.',
            '- Cần cung cấp cho trẻ mục tiêu rõ ràng, dễ nhìn dễ thấy, mục tiêu ngắn hạn trước.',
            '- Tạo một môi trường kỷ luật nghiêm ngặt.',
            '- Dùng phương pháp tương tác khi hướng dẫn: thảo luận, để người khác đưa ra câu hỏi và mình trả lời.',
          ]),
        ],
      ),
    );
  }
}
