import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/SubTypeScreen.dart';

class Ae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: ' Vân Núi Ae',
        iconImage: 'images/mountain.png',
        headerImages: [
          HeaderImage(path: 'images/ae_detail.png', widthFactor: 0.3),
        ],
        homeRoute: '/ae',
        pages: [
          CardPageData(title: 'Đặc điểm:', items: [
            '- Sự kết hợp giữa nhóm Đại bàng với Núi, khoảng cách tâm đến giao điểm của đại bàng nhỏ hơn 5 đường vân.',
            '- Có 1 tâm tròn ở giữa.',
            '- Là một người nhạy cảm, có mục tiêu rõ ràng, luôn sẵn sằng cố gắng để đạt mục tiêu.',
            '- Giỏi với con số, phù hợp với các việc cần tính toán, đầu tư tài chính.',
            '- Là người cẩn trọng, luôn chú ý tới các chi tiết trong quá trình làm việc, luôn đánh giá cao tiến trình công việc.',
            '- Thông minh, khả năng hấp thu kiến thức cũng rất lớn như các đặc tính vân khác của chủng vân núi.',
          ]),
          CardPageData(title: 'Ưu điểm:', items: [
            '- Có mục tiêu rõ ràng, luôn sẵn sằng cố gắng để đạt mục tiêu.',
            '- Cẩn trọng.',
            '- Thông minh, khả năng hấp thu kiến thức cũng rất lớn.',
          ]),
          CardPageData(title: 'Nhược điểm:', items: [
            '- Nhạy cảm.',
          ]),
          CardPageData(title: 'Phương hướng phát triển:', items: [
            '- Nên phát triển sự nghiệp liên quan đén tính toàn, đầu tư tài chính',
          ]),
        ],
      ),
    );
  }
}
