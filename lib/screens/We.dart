import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/SubTypeScreen.dart';

class We extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: 'Vân Đại Bàng WE',
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WE.png', widthFactor: 0.2),
          HeaderImage(path: 'images/we_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/we',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- 1 tâm, 2 giao điểm – vòng tròn quanh tâm dày hơn.',
            '- Định hướng và tập trung mục tiêu, giỏi trong việc thiết lập mục tiêu cũng như lập kế hoạch chi tiết.',
            '- Có khả năng truyền lửa, truyền cảm xúc.',
            '- Tiêu chuẩn cao, phân tích tỉ mỉ, quan tâm tới chất lượng, sự chính xác và hoàn hảo. ',
            '- Tính kỷ luật và đòi hỏi ở bản thân cao.',
            '- Bị tình cảm, cảm xúc chi phối (đôi khi vì tình cảm mà thay đổi quyết định).',
            '- Nỗ lực để chiến thắng và thàng công, không chấp nhận thất bại.',
            '- Là người lương thiện, không làm hại được ai (nếu làm hại ai thì lương tâm sẽ rất cắn rứt và cảm thấy tội lỗi).',
            '- Làm việc có hệ thống, luôn tự đặt ra và duy trì hệ thống. Đề cao tác phong chuyên nghiệp, rất quan tâm đến hình ảnh cá nhân.',
            '- Cần rèn luyện tính kiên trì sẽ có cơ hội thành công cao.',
            '- Chủ quan, cái tôi cao, chủ nghĩa cá nhân, rất khó bị thuyết phục và ảnh hưởng (trừ khi đó là người mình nể trọng, có kiến thức chuyên sâu hoặc có chứng thực cụ thể).',
            '- Thích chỉ đạo, quyết đoán, đôi khi cho mình là trung tâm, dẫn đến áp đặt người khác; ý chí mạnh mẽ, quyết tâm cao.',
            '- Dễ dàng bị vướng giữa khía cạnh logic/lý trí và cảm xúc, có xu hướng lo lắng thái quá, nghĩ đến những rủi ro tiêu cực. Hay hồi hộp, thay đổi tâm trạng đột ngột.',
            '- Thẳng thắn, nóng tính, đôi khi không kiểm soát được cảm xúc.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Tầm nhìn xa trông rộng.',
            '- Chỉnh chu và cầu toàn trong công việc, hay lo sợ kết quả xấu trong công việc, đời sống.',
            '- Tổng hợp các suy nghĩ, dự đoán và lường trước kết quả hoàn thành.',
            '- Có khả năng thúc đẩy năng lượng, xúc cảm cho những người xung quanh.',
            '- Mẫu người đi đầu và làm gương trong vấn đề mang tính kỷ luật, nội quy cơ quan, công sở.',
            '- Khả năng nhìn nhận và đánh giá năng lực người khác khá tốt, khả năng xây dựng đội nhóm và phân công nhiệm vụ cho người khác cùng tham gia.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Thường bị cảm xúc chi phối.',
            '- Đôi khi lo lắng thái quá.',
            '- Họ bị sự cầu toàn chi phối trong công việc nên đôi khi loay hoay, dẫn đến không tập trung và đạt kế quả không như mong muốn.',
            '- Do bị cảm xúc chi phối nên dễ bị tổn thương.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Cân bằng cảm xúc, khi giỏi cái gì rồi phải nên tự tin, không nên lo lắng quá.',
            '- Nghĩ đơn giản, lập kế hoạch lên cũng không nên quá lo lắng.',
            '- Hãy luôn duy trì cảm xúc tích cực trong mình, WE sẽ trở thành những con người tiên phong, đầy hứng khởi và truyền cảm hứng bất tận tới mọi người. Đó cũng chính là nguồn động lực để WE luôn hết mình tiến xa hơn trên con đường sự nghiệp, cuộc sống.',
            '- Đừng bao giờ để những cảm xúc tiêu cực tác động vào mình để mình trở thành kẻ bị chi phối bởi cảm xúc. Đó chính là hố chôn WE.',
            '- Keyword để WE thành công trong cuộc sống là hãy quản trị được cảm xúc của mình và biến cảm xúc thành vũ khí lợi hại.',
            '- Biết được khi nào một cái gì đó là "đủ tốt" và coi đó như là đã hoàn tất. Hãy vui tươi, thoải mái trải nghiệm, nuôi dưỡng sự thanh thản cho tâm hồn.',
            '- Gia tăng hoạt động đội nhóm để tối đa hóa điểm mạnh của tập thể. Tham gia các hoạt động phát triển kỹ năng giao tiếp.',
          ]),
          CardPageData(title: 'Giao tiếp với với vân WE:', items: [
            '- Nên thông báo và thảo luận trước kế hoạch.',
            '- Khi hoàn thành nhiệm vụ nên khen ngợi và thưởng.',
            '- Hình thành kỹ năng quản lý trạng thái cảm xúc của bản thân cho cá nhân này.',
            '- Chia sẻ và giúp họ phân tích trước những tình huống.',
            '- Đưa ra lựa chọn cùng lợi ích của việc cần làm thay vì đưa ra mệnh lệnh.',
            '- Để trẻ quyết định những việc nằm trong khả năng thay vì ba mẹ tự quyết định hoặc làm giúp.',
          ]),
        ],
      ),
    );
  }
}
