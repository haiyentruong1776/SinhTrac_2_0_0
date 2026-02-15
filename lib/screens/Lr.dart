import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/SubTypeScreen.dart';

class Lr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: ' Vân Nước LR',
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/RL_left.png', widthFactor: 0.25),
          HeaderImage(path: 'images/lr_detail.png', widthFactor: 0.26),
        ],
        homeRoute: '/lr',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- Xác suất xuất hiện: 5%. Hình dạng như dòng nước chảy xuôi về phía ngón tay cái. Hay còn được gọi là chủng vân tay NƯỚC NGƯỢC.',
            '- Là một trong những chủng mạnh, là chủng rất thông minh. Vẫn có tính cách của Loop nói chung.',
            '- Hòa đồng, thân thiện nhưng ít khi chủ động tạo mối quan hệ. Giao tiếp theo phong cách cởi mở.',
            '- Nhạy cảm trong giao tiếp, quan sát rất sắc bén.',
            '- Thường không được sự hưởng ứng của mọi người xung quanh và dễ bị cô lập.',
            '- Mong muốn tự do, không thích bị ràng buộc trong khuôn khổ truyền thống.',
            '- Có tính hài hước.',
            '- "Suy nghĩ ngoài chiếc hộp". Có tư duy độc đáo, khác biệt và phá cách, đôi khi bị cho là lập dị.',
            '- Theo đuổi sự độc đáo và khác biệt. Khát khao tự do, mong muốn phá vỡ truyền thống.',
            '- Tư tưởng chống đối, không bao giờ thỏa hiệp với những gì mà họ không mong đợi.',
            '- Học hỏi rất nhanh từ môi trường và xã hội, dễ nắm bắt và mô phỏng tốt.',
            '- Không thể chịu đựng cuộc sống gò bó, đơn giản và buồn tẻ. Thích những điều thử thách, mới mẻ và huyền bí.',
            '- Đầy sáng tạo, đưa ra giải pháp nhanh và hiệu quả tại thời điểm khủng hoảng.',
            '- Tư duy ngược, suy nghĩ vượt giới hạn và luôn đột phá những sáng tạo mới.',
            '- Không quan tâm đến cách đánh giá của người khác, chỉ làm những điều họ muốn làm.',
            '- Cực kì tò mò, giỏi trong việc giải nghĩa, lý luận và có lối suy luận ngược.',
            '- Chu đáo, chân thành, sống tình cảm, biết quan tâm mọi người. Dễ bị kích động về mặt cảm xúc.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Tính cách và phong cách mạnh mẽ và độc đáo, khó chấp nhận lối suy nghĩ bình thường hay chậm chạp; ghét những gì bình thường.',
            '- Năng lực sáng tạo rất cao, khả năng quan sát sắc bén, khả năng cảm nhận và thấu hiểu cao.',
            '- Thích suy luận, có khả năng làm việc một cách hiệu quả và kiểm soát mọi việc vào phút chót theo kiểu nước đến chân mới nhảy tốt hơn các kiểu vân tay khác.',
            '- Có khả năng tranh luận và phản biện rất tốt.',
            '- Đại diện cho mẫu người đấu tranh vì hòa bình, dám đứng lên vì quyền lợi của người khác hay bản thân mình.',
            '- Hứng thú với những điều huyền bí.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Không thể chịu đựng cuộc sống gò bó, đơn giản và buồn tẻ.',
            '- Thường gây sốc người khác bằng ngôn từ của mình. Dám nghĩ dám làm đôi khi trở thành lập dị.',
            '- Tư tưởng chống đối, không bao giờ thỏa hiệp với những gì mà họ không mong đợi.',
            '- Vì đa phần suy nghĩ và hành động ngược lại với số đông nên nếu không cân bằng thì dễ làm bất hòa giữa các mối quan hệ xung quanh trong công việc và cuộc sống.',
            '- Cái tôi lớn.',
            '- Thích làm mọi công việc với những suy nghĩ đối lập, hay phán đoán.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Chấp nhận các đặc tính độc đáo của mình cũng như của người khác.',
            '- Phát huy sự nhiệt tình đặt câu hỏi.',
            '- Làm việc theo cảm tính, dễ thay đổi nguyên tắc và kế hoạch đã vạch ra. Vì vậy nên lập kế hoạch làm việc rõ ràng, chi tiết, tập trung vào mục tiêu và giám sát tiến độ thực hiện.',
            '- Học để trở thành người hướng dẫn và chịu trách nhiệm với quy trình làm việc, đưa ra giải pháp cho vấn đề phát sinh.',
            '- Thường quyết định theo chủ quan cá nhân và cảm xúc nhất thời nên có thể gây ảnh hưởng đến hiệu quả công việc hoặc mối quan hệ. Do đó nên lắng nghe và cân nhắc kỹ trước khi ra quyết định.',
          ]),
          CardPageData(title: 'Giao tiếp với với vân LR:', items: [
            '- Khi giao tiếp với mẫu người này, cần chân thành, nhẹ nhàng để tạo sự tin tưởng, giúp cuộc nói chuyện cởi mở và hiệu quả hơn.',
            '- Thể hiện sự quan tâm, dành thời gian để hỏi và trả lời, không ngắt lời họ.',
            '- Chấp nhận sự độc đáo, sáng tạo của họ hơn là áp đặt họ trở thành ai đó.',
            '- Tránh việc thiếu tôn trọng ý kiến hoặc ép buộc họ phải làm vì sẽ ảnh hưởng ngược đến kết quả hành động.',
            '- Cần làm mẫu để dễ dàng bắt nhịp trong học tập. Những hoạt động khơi nguồn cảm hứng và sáng tạo là rất cần thiết.',
            '- Khuyến khích hỏi và kiên nhẫn trả lời, giúp bản thân tự tìm ra câu trả lời.',
          ]),
        ],
      ),
    );
  }
}
