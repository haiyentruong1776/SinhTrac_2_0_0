import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/SubTypeScreen.dart';

class Wx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: 'Vân Đại Bàng WX',
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WX1.png', widthFactor: 0.3),
          HeaderImage(path: 'images/WX2.png', widthFactor: 0.3),
        ],
        homeRoute: '/wx',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- Có nhiều đặc điểm tính cách và thay đổi thất thường, không thể đoán biết được. Có rất nhiều ý tưởng kỳ lạ và khác biệt.',
            '- Có xu hướng hay thay đổi và không ổn định, năng lượng phân tán khắp mọi nơi.',
            '- "Suy nghĩ ngoài chiếc hộp", có tính cá nhân hóa.',
            '- Theo đuổi những điều độc đáo và khác biệt từ những người khác.',
            '- Thích những điều mới mẻ và huyền bí.',
            '- Ham muốn tự do, mong muốn phá vỡ những điều thuộc về truyền thống.',
            '- Có tính kháng cự, không bao giờ chấp nhận những điều mà họ không mong đợi.',
            '- Họ không bao giờ tự giới hạn chính bản thân mình, có những ý nghĩ mang tính đối kháng.',
            '- Không thể chấp nhận cuộc sống đơn giản và buồn tẻ, thích những thứ mới mẻ và thử thách, những điều đa dạng và bí ẩn.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Là những người có "Suy nghĩ ngoài chiếc hộp", theo đuổi những điều độc đáo và khác biệt từ những người khác.',
            '- Thích những điều mới mẻ và huyền bí.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Lối suy nghĩ độc đáo, sáng tạo đôi lúc có phần "điên" khiến họ khó hòa đồng và thường bị xa lánh.',
            '- Với tính cách bốc đồng, WX rất dễ bị kích động (về mặt cảm xúc), và khó kiểm soát cảm xúc của bản thân.',
            '- WX cũng là nhóm người khó có thể áp đặt bởi họ luôn thích sống và làm việc theo ý muốn riêng của bản thân.',
            '- Bốc đồng, dễ kích động (về mặt cảm xúc).',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- WX cần chấp nhận nét độc đáo và khác biệt của mình.',
            '- WX cần luôn để cho tinh thần thoải mái, có không gian và thời gian riêng để theo đuổi những sở thích cá nhân và tự phát triển bản thân.',
            '- Muốn thành công WX cần học thói quen lập kế hoạch làm việc rõ ràng, chi tiết, tập trung vào mục tiêu và giám sát tiến độ thực hiện.',
            '- Cảm xúc là kẻ thù của thành công nên WX cần học cách kiểm soát cảm xúc, nên lắng nghe ý kiến của người khác, cân nhắc kỹ trước khi ra quyết định.',
            '- WX cũng nên thường xuyên tự phản ánh bản thân để tránh trở nên tự huyễn hoặc (hoặc trở nên kiêu ngạo).',
          ]),
          CardPageData(title: 'Giao tiếp với với vân WX:', items: [
            '- Khi giao tiếp với WX Cần chân thành, nhẹ nhàng. Thể hiện sự quan tâm và tôn trọng, không ngắt lời họ.',
            '- Tránh ra lệnh trực tiếp hoặc ép buộc WX vì sẽ ảnh hưởng ngược đến cách họ hành động.',
            '- Chấp nhận sự độc đáo, sáng tạo của WX hơn là áp đặt họ trở thành ai đó.',
            '- Khuyến khích hỏi và kiên nhẫn giúp trẻ tìm ra giải pháp hoặc câu trả lời.',
            '- Sử dụng thẻ điểm cho việc đạt mục tiêu như là sự khuyến khích.',
            '- Tạo ra nhiều thử thách nhỏ cho bản thân từ sớm để cá nhân trải nghiệm trong môi trường an toàn.',
          ]),
        ],
      ),
    );
  }
}
