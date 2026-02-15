import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/SubTypeScreen.dart';

class Lf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: ' Vân Nước LF',
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/lf_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/lf',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- Các đặc tính khá giống với chủng LU.',
            '- Khả năng hiểu nhanh một sự việc chỉ trong thời gian ngắn và thường hiểu rất sâu, khác biệt so với người bình thường.',
            '- Có sự đa dạng và phong phú trong tính cách.',
            '- Hòa đồng, cởi mở, thân thiện nhưng ít chủ động tạo mối quan hệ. Nhạy cảm trong giao tiếp, thích quan sát.',
            '- Không thích xung đột mâu thuẫn, đề cao tinh thần đồng đội, yêu thích hoạt động đội nhóm.',
            '- Là thành viên tốt trong đội nhóm, người chấp hành tốt, khả năng chịu đựng cao.',
            '- Thích nghi tốt, dễ hòa nhập với từng môi trường. Có tư duy linh hoạt và khả năng tương thích cao.',
            '- Nhiệt tình, chân thành và dễ cảm thông cho vấn đề của người khác. Rất coi trọng các mối quan hệ.',
            '- Biết lắng nghe và chấp nhận ý kiến của người khác.',
            '- Cư xử theo cách mọi người mong đợi, bằng cách nào đó chiều ý những người khác.',
            '- Chu đáo, biết quan tâm mọi người, sống tình cảm, thích tự do.',
            '- Không giỏi sáng tạo, tuy nhiên học hỏi rất nhanh từ môi trường và xã hội, dễ bắt chước và mô phỏng tốt.',
            '- Là một người dễ bị người khác ảnh hưởng.',
            '- Kỷ luật tự giác bản thân thấp.',
            '- Là người của xã hội, cộng đồng. Là một chủng khá phổ biến. Người mang chủng nay khá hiền và lành tính, dễ bị người khác chèn ép.',
            '- Lãng mạn, thích sự tự do.',
            '- Họ làm việc theo cảm tính và dễ thay đổi mục tiêu của mình.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Khả năng bắt chước vượt trội, học nhanh trong môi trường và trong xã hội.',
            '- Mềm mại, nhẹ nhàng và cởi mở; lãng mạn, thích tự do và chỉ sống cho hiện tại.',
            '- Hướng tới sự hòa hợp và hòa bình, không thích sự mâu thuẫn, gay gắt hay xung đột.',
            '- Thuộc mẫu người cộng đồng xã hội thích những nơi đông người, thích nghi trước rồi mới giao tiếp, thích tham gia các hoạt động vì cộng đồng.',
            '- Cảm xúc, làm theo cảm xúc. Thường quan tâm tới những người xung quanh, dễ cảm thông cho vấn đề của người khác.',
            '- Suy nghĩ linh hoạt và tương thích, dễ bắt chước hoặc tái tạo ý tưởng của người khác thành ý tưởng của mình.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Không có mục tiêu rõ ràng trong tâm trí, tham vọng không lớn.',
            '- Không có chính kiến, dễ bị tác động bởi những người xung quanh và môi trường.',
            '- Hay lo chuyện bao đồng.',
            '- Thụ động, dễ bị áp đặt.',
            '- Làm việc theo cảm tính, dễ thay đổi nguyên tắc và kế hoạch đã vạch ra.',
            '- Công việc, kế hoạch có thể bị trì hoãn vì lối sống tình cảm.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Làm việc theo cảm tính, dễ thay đổi nguyên tắc và kế hoạch đã vạch ra. Vì vậy nên lập kế hoạch làm việc rõ ràng, chi tiết, tập trung vào mục tiêu và giám sát tiến độ thực hiện. Tham gia các khóa học về ra quyết định và lập mục tiêu.',
            '- Học để trở thành người hướng dẫn và chịu trách nhiệm với quy trình làm việc, đưa ra giải pháp cho vấn đề phát sinh.',
            '- Công việc, kế hoạch có thể bị trì hoãn vì lối sống tình cảm. Chọn một người tri kỷ đáng tin cậy để động viên và khích lệ, đôn đốc việc thực hiện mục tiêu.',
            '- Chủ động giao tiếp. Tham gia các hoạt động cộng đồng khác nhau, chủ động nhận vị trí lãnh đạo, xây dựng sự tự tin. Tham khảo tự truyện của những người thành công.',
            '- Học cách nói "không" với người khác một cách thích hợp khi cần thiết.',
            '- Nước phải tìm cho mình NGƯỜI THẦY: Người Thầy sẽ như vật chứa, có thể định hình giúp NƯỚC. Là người định hướng, chỉ bảo, thúc đẩy, động viên để nước có thể dễ dàng hơn về hướng đi trong cuộc đời mình. Hãy tìm cho mình người Thầy về phát triển bản thân, người thầy về phát triển chuyên môn, phát triển kinh doanh, … .',
            '- Nước cần phải có MÔI TRƯỜNG TỐT.Nước dễ thích nghi với môi trường. Dễ hòa nhập với môi trường và khả năng sao chép tốt. Chính vì điều đó Nước ở bên cạnh ai, trong môi trường như thế nào nước sẽ dễ dàng trở thành những người tương tự như thế.',
            '- Nước cần HÌNH TƯỢNG. Nước giỏi sao chép, chính vì vậy nước hãy tìm ra những thần tượng cho mình. Nghiên cứu, tìm hiểu, học hỏi từ họ để tìm ra những triết lý sống, cách thức mà họ đã thành công. Từ đó nước áp dụng bằng khả năng sao chép của chính mình.',
            '- Chọn bạn mà chơi, chọn nơi mà ở, chọn thầy mà học.',
          ]),
          CardPageData(title: 'Giao tiếp với với vân LF:', items: [
            '- Khi giao tiếp với mẫu người này, cần chân thành, nhẹ nhàng để tạo sự tin tưởng, giúp cuộc nói chuyện cởi mở và hiệu quả hơn.',
            '- Thể hiện sự quan tâm, dành thời gian để hỏi và trả lời, khen ngợi, động viên.',
            '- Cần làm mẫu cụ thể để dễ dàng bắt nhịp trang học tập.',
            '- Cần theo dõi, thường xuyên khuyến khích và động viên trẻ kịp thời để truyền sự tự tin, tránh việc bỏ dở nửa chừng theo tâm trạng.',
            '- Tạo một môi trường kỷ luật nghiêm ngặt.',
            '- Dùng phương pháp tương tác khi hướng dẫn: thảo luận, để người khác đưa ra câu hỏi và mình trả lời.',
          ]),
        ],
      ),
    );
  }
}
