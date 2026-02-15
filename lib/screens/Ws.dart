import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/SubTypeScreen.dart';

class Ws extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: 'Vân Đại Bàng WS',
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WS.png', widthFactor: 0.2),
          HeaderImage(path: 'images/ws_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/ws',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- 1 tâm, 2 giao điểm – tâm là vòng tròn hở xoáy trôn ốc.',
            '- Mạnh mẽ, tự tin, quyết đoán và tự lập.',
            '- Tính tự quản cao, suy nghĩ quyết đoán.',
            '- Tự thúc đẩy, chủ động hoàn thiện bản thân.',
            '- Có xu hướng chỉ huy, không thích sự áp đặt tuy nhiên đôi khi có xu hướng áp đặt và lấn át người khác.',
            '- Là mẫu người có thế giới nội tâm phong phú mà người khác thường không hiểu được.',
            '- Chủ quan, cái tôi cao, chủ nghĩa cá nhân, rất khó bị thuyết phục và ảnh hưởng.',
            '- Tính kỉ luật và đòi hỏi ở bản thân cao, không chấp nhận thất bại.',
            '- Có khả năng lãnh đạo, khả năng kiểm soát cảm xúc và điều phối công việc tốt.',
            '- Kiên trì thực hiện công việc một cách nghiêm túc và đam mê. Thường nỗ lực trong một khoảng thời gian dài vào bất cứ công việc gì mà họ cảm thấy quan trọng để hoàn thành mục tiêu của mình, ít nản chí.',
            '- Một phẩm chất dễ giúp cá nhân này thành công đó là \"sự kiên định\".',
            '- Rất quan tâm đến hình ảnh cá nhân, đề cao sự rõ ràng trong các mối quan hệ cũng như công việc. ',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Khả năng nhận thức cao, không dễ dàng bị tác động.',
            '- Tự lập, luôn có tinh thần chiến đấu mạnh mẽ, thích chinh phục, không nản lòng trước khó khăn, thử thách và luôn tự động viên bản thân.',
            '- Có phong cách riêng. Sống bằng lí trí hơn tình cảm, mạnh mẽ.',
            '- Biết cách để đạt được mục tiêu, và luôn chủ động trong công việc.',
            '- Kiên định với mục tiêu và không dễ dàng từ bỏ.',
            '- Luôn hoàn thiện bản thân trở nên chuyện nghiệp. Họ luôn có suy nghĩ tích cực.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Đôi khi tư duy hơi cứng nhắc, nếu lặp lại nhiều sẽ hình thành nên tính bảo thủ.',
            '- Thường khó chấp nhận thất bại của bản thân cũng như người khác.',
            '- Khi gặp thất bại thường tự mình chịu đựng, hay gặp vấn đề về mối quan hệ.',
            '- Không thích lắng nghe lời khuyên, ý kiến của người khác nên hay xảy ra những thất bại không đáng có.',
            '- Nếu tuýp người này không xác định được mục tiêu của bản thân, họ sẽ dễ trở nên chán nản và rất tiêu cực.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Xây dựng cho mình một mục tiêu dài hạn 5 -10 – 20 năm rồi chia nhỏ thành từng năm – từng tháng thậm chí là từng ngày. Điều đó sẽ giúp WS duy trì được năng lượng tích cực và tinh thần vượt khó giúp WS kích hoạt được mọi tố chất của mình.',
            '- Nếu không có mục tiêu sẽ khiến WS rơi vào trạng thái mất phương hướng và khó thành công như WS đáng có.',
            '- WS cần tránh ép buộc người khác theo tiêu chuẩn và mong đợi riêng của bản thân, sẽ gây áp lực, mệt mỏi cho bản thân và mọi người.',
            '- WS cần cân nhắc giữa lợi ích bản thân và lợi ích của người khác, kiên nhẫn lắng nghe và đặt mình vào vị trí của người khác để hiểu họ hơn, sẽ tạo được niềm tin, sự quý trọng và mối quan hệ tốt đẹp hơn.',
            '- WS hãy gia tăng hoạt động đội nhóm để tối đa hóa điểm mạnh của tập thể. Tham gia các hoạt động – giao tiếp và phát triển kỹ năng giao tiếp.',
            '- WS cũng cần duy trì thái độ cởi mở, tránh cao ngạo vô ý.',
            '- WS cần học cách giao việc và tập trung vào giá trị và điểm mạnh của mọi người thay vì chỉ nhìn vào điểm yếu của họ.',
            '- WS cần học cách chia sẻ cảm xúc, khó khăn của bản thân với mọi người để tránh căng thẳng, nếu không thể học cách chia sẻ thì có thể chọn phương án viết nhật ký, khi nóng giận thì hãy xả giận của mình bằng cách hít thở sâu và viết xuống mọi bức bối của mình sau đó thì xé đi như vậy cũng giúp cho WS giảm bớt căng thẳng và bức xúc.',
          ]),
          CardPageData(title: 'Giao tiếp với với vân WS:', items: [
            '- Khi giao tiếp với WS: cần ngắn gọn, tập trung vào vấn đề chính. Lưu ý tới điều họ quan tâm.',
            '- WS cần được Tôn trọng và tránh áp đặt, và chỉ nên đề cập khuyết điểm/ lỗi sai của họ ở nơi riêng tư. Khen trong sáng chê trong tối.',
            '- Khi giao tiếp với WS nếu vấn đề trở nên gay gắt không nên tiếp tục tranh luận.',
            '- Nên thông báo hoặc thảo luận trước kế hoạch tránh việc đưa WS vào sự việc đã rồi.',
            '- Cần khen ngợi và tưởng thưởng kịp thời nếu WS hoàn thành tốt nhiệm vụ.',
            '- Tránh áp đặt WS hãy đưa ra lựa chọn cùng lợi ích của việc cần làm thay vì đưa ra mệnh lệnh. Hoặc có thể đưa ra 2 sự lựa chọn để WS tự lựa chọn thay vì chỉ có 1.',
            '- WS cần để bản thân tự quyết định những việc nằm trong khả năng của mình thay vì nhờ người khác quyết định hộ hoặc làm giúp.',
          ]),
        ],
      ),
    );
  }
}
