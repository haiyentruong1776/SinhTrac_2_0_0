import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/SubTypeScreen.dart';

class Wp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: 'Vân Đại Bàng WP',
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/wp_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/wp',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- Xác suất xuất hiện: 2%. Tâm tròn như mắt công, giao điểm gần nhất cách tâm ≤ 5 vân (Hoa tay).',
            '- Cầu toàn, tiêu chuẩn cao, để ý đến từng chi tiết. Theo đuổi sự độc đáo, khác biệt và đại diện cho mẫu người theo chủ nghĩa hoàn hảo.',
            '- Sắc sảo trong nhận thức, khéo léo trong giao tiếp, có khả năng xoay chuyển tình thế. Là một nhà lãnh đạo độc đáo, lôi cuốn.',
            '- Có khả năng thuyết phục người khác bằng niềm tin và quan điểm của mình.',
            '- Có năng lực dự đoán, tạo ra hay khám phá ra thị trường mới.',
            '- Có khả năng tốt trong việc nhận diện hoặc tạo ra sự khác biệt, hình thành ý tưởng mới.',
            '- Tự tin, lạc quan, chủ động và quyết liệt.',
            '- Cạnh tranh mạnh mẽ, nỗ lực để chiến thắng và thành công. Vận dụng nhiều cách khác nhau để đạt mục tiêu.',
            '- Quan tâm đến mọi người xung quanh, không bướng bỉnh.',
            '- Nhạy cảm, tinh tế với cái đẹp. Thiên hướng nghệ thuật và ý thức về thẩm mỹ tốt.',
            '- Đề cao tác phong chuyên nghiệp, để ý xây dựng hình tượng cá nhân và hoàn thiện bản thân.',
            '- Kiêu hãnh, tự hào về bản thân. Quyến rũ, thu hút người đối diện.',
            '- Là người có năng lượng rất trong sạch.',
            '- Khả năng dẫn dắt và tư duy sáng tạo.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Người sở hữu chủng vân tay WP, có nét tính cách tinh tế thiên bẩm, khả năng hoạt ngôn sắc sảo và có thiên hướng cảm thụ nghệ thuật rất tốt.',
            '- Người mang chủng vân tay WP có khả năng tuyệt vời trong việc quan sát các chi tiết. Từ cảm xúc, thái độ, cử chỉ tới hành động của người đối diện dù là nhỏ nhất.',
            '- Họ có khả năng truyền cảm hứng đến mọi người xung quanh. Có khả năng dùng quan điểm riêng của mình để thuyết phục người khác rất tốt.',
            '- Họ có tư duy sáng tạo và hình thành ý tưởng mới rất tốt.',
            '- Họ luôn nỗ lực trong công việc, có tinh thần cạnh tranh mạnh mẽ.',
            '- Biết vận dụng nhiều phương pháp linh hoạt khác nhau để đạt được mục tiêu đề ra.',
            '- Một đặc điểm nổi bật của chủng vân tay WP, đó chính là sự cầu toàn. Điều này được thể hiện một cách rõ ràng, trong sự chu đáo hoàn thành tất cả mọi việc đầy trách nhiệm. Bởi họ luôn quan tâm đến sự đánh giá của mọi người về mình.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Họ thường có xu hướng đặt mình ở vị trí cao hơn những người xung quanh. Trong một vài trường hợp họ thường rất tự hào về bản thân.',
            '- Kỹ tính, cái gì cũng phải hoàn hảo.',
            '- Nếu làm việc với người này sẽ khá áp lực.',
            '- Tự cao tự đại.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Lắng nghe và cảm nhận nhiều hơn, tránh việc ép buộc người khác theo tiêu chuẩn và mong đợi riêng của bản thân sẽ giúp có được mối quan hệ tốt đẹp với mọi người.',
            '- Cần cân nhắc giữa lợi ích bản thân và lợi ích của người khác, đặt mình vào vị trí của người khác để hiểu họ hơn.',
            '- Chú ý đến giá trị và điểm mạnh hơn là tập trung vào lỗi sai của người khác, giảm đi cách nhìn tiêu cực.',
            '- Giữ một thái độ cởi mở để tránh những trường hợp bị cho là kiêu ngạo do vô ý.',
            '- Tham gia nhiều hoạt động cộng đồng; Cải thiện, nâng cao các kỹ năng tương tác giao tiếp.',
          ]),
          CardPageData(title: 'Giao tiếp với với vân WP:', items: [
            '- Khi giao tiếp với người có chủng Wp, cần ngắn gọn, tập trung vào vấn đề chính.',
            '- Tôn trọng họ trong việc giao tiếp và ra quyết định, chỉ nên đề cập khuyết điểm/ lỗi sai của họ ở nơi riêng tư.',
            '- Giao tiếp khéo léo ví dụ ( khi một người bạn hỏi WP về chiếc váy mà họ đang mặc xem có đẹp không, mặc dù chiếc váy đó không được đẹp cho lắm, nhưng WP vẫn khen một cách khéo léo là chiếc váy đó nhìn khá sang trọng).',
            '- Khen ngợi và thưởng nếu bản thân hoàn thành tốt nhiệm vụ.',
            '- Đưa ra lựa chọn cùng lợi ích của việc cần làm thay vì đưa ra mệnh lệnh trực tiếp.',
            '- Để bản thân tự quyết định những việc nằm trong khả năng của mình thay vì nhờ người khác quyết định hộ hoặc làm giúp.',
          ]),
        ],
      ),
    );
  }
}
