import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';

class Wt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: 'Vân Đại Bàng WT',
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WT.png', widthFactor: 0.2),
          HeaderImage(path: 'images/wt_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/wt',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- 1 tâm, 2 giao điểm – tâm khép kín',
            '- Độc lập, nhanh chóng, chủ động. Tính tự quản cao, suy nghĩ quyết đoán, mạnh mẽ.',
            '- Định hướng mục tiêu rõ ràng, tập trung, kiên trì và quyết liệt với mục tiêu đã đề ra.',
            '- Tự thúc đẩy, chủ động hoàn thiện bản thân. Đề cao tác phong chuyên nghiệp, rất quan tâm đến hình ảnh cá nhân.',
            '- Tự cô lập bản thân mình, SỐNG KHÉP KÍN VÀ NỘI TÂM, khó thổ lộ cảm xúc.',
            '- Cạnh tranh mạnh mẽ, nỗ lực để chiến thắng và thành công. Khuynh hướng phân tích và tự nghiên cứu.',
            '- Thích thể hiện (đôi lúc cho mình là trung tâm), có xu hướng chỉ huy, đôi khi áp đặt và lấn át người khác.',
            '- Thẳng thắn, nóng tính, đôi khi không kiểm soát được cảm xúc.',
            '- Chủ quan, cái tôi cao, chủ nghĩa cá nhân, rất khó bị thuyết phục và ảnh hưởng (Trừ khi đó là người mình nể trọng, có kiến thức chuyên sâu hoặc có chứng thực rõ rang, cụ thể).',
            '- Mọi người có thể cảm thấy áp lực khi làm việc cùng vì cực kì tập trung và nghiêm túc.',
            '- Tính kỉ luật và đòi hỏi ở bản thân cao, không chấp nhận thất bại.',
            '- Wt khó chia sẻ và khó thổ lộ.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Bạn là mẫu người trầm tính, cứng rắn và khó thổ lộ cảm xúc.',
            '- Có ý chí và tinh thần vững vàng, suy nghĩ mạnh mẽ và độc lập. Có mục tiêu cao.',
            '- Khả năng tuyệt vời trong việc sắp xếp và lên kế hoạch rõ ràng.',
            '- Bạn có sức mạnh cá nhân lớn và phong thái mạnh mẽ giúp đạt được mục tiêu mình đề ra.',
            '- Tự suy nghĩ, tự lập luận và quyết định trong hành động.',
            '- Tinh thần trách nhiệm cao.',
            '- Đối với bạn, công việc quan trọng hơn tất cả, nó lấy đi phần lớn thời gian trong ngày của bạn.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Thường khó chấp nhận thất bại của bản thân cũng như người khác.',
            '- Khi gặp thất bại hoặc đổ vỡ thường tự mình chịu đựng.',
            '- Không thích lắng nghe lời khuyên, ý kiến của người khác nên hay xảy ra những thất bại không đáng có.',
            '- Vì không cảm thấy thoải mái khi bộc lộ cảm giác yêu thích và cảm xúc của mình với người khác nên hay bị hiểu lầm là lạnh nhạt, vô cảm.',
            '- Nếu tuýp người này không xác định được mục tiêu của bản thân, họ sẽ dễ trở nên chán nản và rất tiêu cực.',
            '- Quan tâm và thể hiện tình cảm ra bên ngoài đặc biệt là với người thân để tránh sự hiểu lầm là lạnh lùng, vô cảm.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Học tính kiên nhẫn, khả năng thích ứng với môi trường.',
            '- Cống hiến, định vị lãnh đạo, phát triển nhận thức từ trải nghiệm.',
            '- Học thêm kỹ năng thiết lập và quản lý mục tiêu, có thể đặt mục tiêu theo nguyên tắc SMART sẽ giúp họ phát huy lợi thế của bản thân và dễ dàng đạt được sự thành công trong công việc.',
            '- Đối với trẻ em: Khuyến khích và tạo động lực cho trẻ mỗi ngày để trẻ có thể học hỏi từ thất bại, nhận ra thất bại, mạnh mẽ và dũng cảm hơn khi đối mặt với thất bại.',
          ]),
          CardPageData(title: 'Giao tiếp với với vân WT:', items: [
            '- Đối với người sở hữu mẫu vân tay WT, họ phù hợp với phong cách giao tiếp dân chủ, mang tính xây dựng nhiều hơn là chiều hướng chiếm hữu hoặc áp đảo.',
            '- Thuyết phục nhẹ nhàng sẽ hiệu quả hơn là ép buộc.',
            '- Nên nhắc nhở ít, không nên nhắc nhiều, nếu nhắc nhiều dễ cáu.',
            '- Nên kiểm điểm riêng, tránh phê bình trước mặt người khác vì họ có tự trọng cao.',
          ]),
        ],
      ),
    );
  }
}
