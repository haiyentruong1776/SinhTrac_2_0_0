import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// No description provided for @appTitle.
  ///
  /// In vi, this message translates to:
  /// **'Cẩm Nang Sinh Trắc'**
  String get appTitle;

  /// No description provided for @splashTitle.
  ///
  /// In vi, this message translates to:
  /// **'CẨM NANG SINH TRẮC'**
  String get splashTitle;

  /// No description provided for @exitDialogTitle.
  ///
  /// In vi, this message translates to:
  /// **'Bạn muốn thoát ứng dụng ?'**
  String get exitDialogTitle;

  /// No description provided for @exitNo.
  ///
  /// In vi, this message translates to:
  /// **'KHÔNG'**
  String get exitNo;

  /// No description provided for @exitYes.
  ///
  /// In vi, this message translates to:
  /// **'CÓ'**
  String get exitYes;

  /// No description provided for @homeMenuIntro.
  ///
  /// In vi, this message translates to:
  /// **' Giới Thiệu'**
  String get homeMenuIntro;

  /// No description provided for @homeMenuLookup.
  ///
  /// In vi, this message translates to:
  /// **' Tra Cứu Sinh Trắc'**
  String get homeMenuLookup;

  /// No description provided for @homeMenuHistory.
  ///
  /// In vi, this message translates to:
  /// **' Lịch Sử'**
  String get homeMenuHistory;

  /// No description provided for @homeMenuRate.
  ///
  /// In vi, this message translates to:
  /// **' Rate 5 Sao'**
  String get homeMenuRate;

  /// No description provided for @homeMenuExit.
  ///
  /// In vi, this message translates to:
  /// **' Thoát'**
  String get homeMenuExit;

  /// No description provided for @introTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giới thiệu Sinh Trắc'**
  String get introTitle;

  /// No description provided for @introHeaderLabel.
  ///
  /// In vi, this message translates to:
  /// **'Sinh Trắc Vân Tay: '**
  String get introHeaderLabel;

  /// No description provided for @introHeaderDesc.
  ///
  /// In vi, this message translates to:
  /// **' Là ngành khoa học nghiên cứu về mối liên hệ giữa cấu trúc não bộ, sự phân bổ noron thần kinh với vân tay con người để có định hướng giáo dục phù hợp, phát triển bản thân.'**
  String get introHeaderDesc;

  /// No description provided for @introBody1.
  ///
  /// In vi, this message translates to:
  /// **'- Ngành khoa học sinh trắc vân tay dựa trên những thành tựu khi nghiên cứu về di truyền học, phôi học, sự cấu tạo của vân da tay và não bộ. Khoa học sinh trắc vân tay đã phân tích mật độ, độ ngắn dài của vân tay, hình dạng của vân tay… để phân tích chỉ số TFRC và các năng lực tiềm ẩn của não bộ.\n'**
  String get introBody1;

  /// No description provided for @introBody2.
  ///
  /// In vi, this message translates to:
  /// **'- Bàn tay càng nhiều chủng vân tay nào thì tính cách của bạn sẽ thiên nhiều về chủng vân tay đó. Ngón cái sẽ ảnh hưởng nhiều hơn các ngón còn lại.\n'**
  String get introBody2;

  /// No description provided for @introSectionPersonal.
  ///
  /// In vi, this message translates to:
  /// **'CÁ NHÂN:'**
  String get introSectionPersonal;

  /// No description provided for @introPersonal1.
  ///
  /// In vi, this message translates to:
  /// **'– Khám phá bản thân bằng cách khám phá các năng lực tiềm ẩn của bạn.'**
  String get introPersonal1;

  /// No description provided for @introPersonal2.
  ///
  /// In vi, this message translates to:
  /// **'– Giúp bạn định hướng nghề̀ nghiệp phù hợp với tài năng bẩm sinh.'**
  String get introPersonal2;

  /// No description provided for @introPersonal3.
  ///
  /// In vi, this message translates to:
  /// **'– Khơi dậy niềm đam mê của bạn trong công việc để đạt được mục tiêu và thành công.'**
  String get introPersonal3;

  /// No description provided for @introPersonal4.
  ///
  /// In vi, this message translates to:
  /// **'– Hiểu rõ bản thân để tự làm giàu giá trị của mình.'**
  String get introPersonal4;

  /// No description provided for @introSectionEducation.
  ///
  /// In vi, this message translates to:
  /// **'GIÁO DỤC:'**
  String get introSectionEducation;

  /// No description provided for @introEducation1.
  ///
  /// In vi, this message translates to:
  /// **'– Biết được năng lực bẩm sinh, điểm mạnh, yếu qua 8 loại hình trí thông minh.'**
  String get introEducation1;

  /// No description provided for @introEducation2.
  ///
  /// In vi, this message translates to:
  /// **'– Xác định phương pháp học tập tốt nhất qua đặc tính hấp thu VAK.'**
  String get introEducation2;

  /// No description provided for @introEducation3.
  ///
  /// In vi, this message translates to:
  /// **'– Đánh giá bản thân thông qua các chỉ số EQ, IQ, CQ, AQ và tỉ lệ giữa các chỉ số này.'**
  String get introEducation3;

  /// No description provided for @introEducation4.
  ///
  /// In vi, this message translates to:
  /// **'– Xác định tính cách của trẻ, từ đó xây dựng sự tự tin, tự lập cho con.'**
  String get introEducation4;

  /// No description provided for @introEducation5.
  ///
  /// In vi, this message translates to:
  /// **'– Tư vấn cải thiện mối quan hệ hòa hợp giữa bố mẹ và con trẻ.'**
  String get introEducation5;

  /// No description provided for @introEducation6.
  ///
  /// In vi, this message translates to:
  /// **'– Đánh giá các chỉ số năng động thông qua việc phân tích hai bán cầu não.'**
  String get introEducation6;

  /// No description provided for @introEducation7.
  ///
  /// In vi, this message translates to:
  /// **'– Thiết lập các chương trình học tập cần thiết nhằm giảm thiểu các chi phí cho việc đầu tư vào các khóa học không cần thiết.'**
  String get introEducation7;

  /// No description provided for @introSectionFamily.
  ///
  /// In vi, this message translates to:
  /// **'GIA ĐÌNH:'**
  String get introSectionFamily;

  /// No description provided for @introFamily1.
  ///
  /// In vi, this message translates to:
  /// **'– Cha mẹ thấu hiểu các năng khiếu bẩm sinh, điểm manh và điểm yếu của con em bạn, từ đó định hướng cho trẻ ngay từ khi con còn nhỏ.'**
  String get introFamily1;

  /// No description provided for @introFamily2.
  ///
  /// In vi, this message translates to:
  /// **'– Tư vấn cải thiện các bất đồng quan điểm giữa cha mẹ và con trẻ.'**
  String get introFamily2;

  /// No description provided for @introFamily3.
  ///
  /// In vi, this message translates to:
  /// **'– Thấu hiểu lẫn nhau – Nâng cao giá trị gia đình.'**
  String get introFamily3;

  /// No description provided for @introSectionBusiness.
  ///
  /// In vi, this message translates to:
  /// **'DOANH NGHIỆP:'**
  String get introSectionBusiness;

  /// No description provided for @introBusiness1.
  ///
  /// In vi, this message translates to:
  /// **'– Giúp doanh nghiệp sàng lọc trong tuyển dụng, đánh giá năng lực thực hiện công việc và phong cách của ứng viên.'**
  String get introBusiness1;

  /// No description provided for @introBusiness2.
  ///
  /// In vi, this message translates to:
  /// **'– Phát huy tiềm năng nhân viên tạo đột phá cho doanh nghiệp.'**
  String get introBusiness2;

  /// No description provided for @introBusiness3.
  ///
  /// In vi, this message translates to:
  /// **'– Khám phá tiềm năng của nhân viên nhằm bố trí đúng người vào đúng vị trí.'**
  String get introBusiness3;

  /// No description provided for @introBusiness4.
  ///
  /// In vi, this message translates to:
  /// **'– Tư vấn củng cố nguồn nhân lực. Tìm ra các lãnh đạo tài ba.'**
  String get introBusiness4;

  /// No description provided for @introBusiness5.
  ///
  /// In vi, this message translates to:
  /// **'– Tư vấn, phát triển nhân sự.'**
  String get introBusiness5;

  /// No description provided for @histTitle.
  ///
  /// In vi, this message translates to:
  /// **'Lịch sử Sinh Trắc'**
  String get histTitle;

  /// No description provided for @histHeading.
  ///
  /// In vi, this message translates to:
  /// **'Lịch sử sinh trắc vân tay:'**
  String get histHeading;

  /// No description provided for @hist1823.
  ///
  /// In vi, this message translates to:
  /// **'– Năm 1823: Tiến sĩ Jan Purkinje phân loại những chủng trên các vân tay thành nhiều loại'**
  String get hist1823;

  /// No description provided for @hist1893.
  ///
  /// In vi, this message translates to:
  /// **'– Năm 1893: Francis Galton (cháu của Charles Darwin) là người đầu tiên phát hiện vai trò của vân tay trong lĩnh vực di truyền và sự khác biệt vân tay ở những chủng tộc khác nhau. Ông đã đơn giản hoá việc phân loại vân tay và chia vân tay thành 3 loại lớn: Vân sóng (không có tam giác điểm), vân móc (có 1 tam giác điểm), vân xoáy (có 2 tam giác điểm) (1892) Francis Galton (cháu của Charles Darwin) là người đầu tiên phát hiện vai trò của vân tay trong lĩnh vực di truyền và sự khác biệt vân tay ở những chủng tộc khác nhau.'**
  String get hist1893;

  /// No description provided for @hist1926.
  ///
  /// In vi, this message translates to:
  /// **'– Năm 1926: Tiến sĩ Harold Cummins được xem là cha đẻ của ngành nghiên cứu khoa học dấu vân tay đưa ra lý luận chỉ số cường độ vân tay PI (Pattern Intensity).Giá trị RC, số lượng tam giác điểm, hình dạng vân tay, vị trí hình dạng vân tay ở những ngón tay khác nhau có liên quan đến tiềm năng và trí tuệ của con người.Ông nghiên cứu ra rằng dấu vân tay được hình thành đồng thời với sự hoàn thiện các cấu trúc của não bộ. Dấu vân tay được khởi tạo ở thai nhi vào giai đọan từ 13 đến 19 tuần tuổi. Vào giai đọan trước đó, thai nhi không có dấu vân tay đồng thời não bộ cũng chỉ trong giai đoạn hình thành. Khi thai nhi được 19 tuần tuổi cũng là lúc các vùng chính của não hình thành bao gồm cả vỏ đại não.'**
  String get hist1926;

  /// No description provided for @hist1969.
  ///
  /// In vi, this message translates to:
  /// **'– Năm 1969: John J. Mulvihill, MD và David W. Smith, MD xuất bảncuốn \"Thiên tài qua vân tay\", cung cấp phiên bản mới nhất về sựhình thành của vân tay. '**
  String get hist1969;

  /// No description provided for @hist1970.
  ///
  /// In vi, this message translates to:
  /// **'– Năm 1970: Liên Xô sử dụng Sinh trắc vân tay trong việc lựa chọn thí sinh cho thế vận hội Olympic. '**
  String get hist1970;

  /// No description provided for @hist1980.
  ///
  /// In vi, this message translates to:
  /// **'– Năm 1980: Trung Quốc thực hiện công trình nghiên cứu tiềm năng con người, trí thông minh và tài năng trong vân tay và gen của con người. '**
  String get hist1980;

  /// No description provided for @hist1985.
  ///
  /// In vi, this message translates to:
  /// **'– Năm 1985: Tiến sĩ Chen Yi Mou – Đại học Havard nghiên cứu Sinh trắc vân tay dựa trên Thuyết Đa Thông Minh của Tiến sĩ Howard Gardner. Đây là lần đầu tiên áp dụng Sinh trắc dấu vân tay trong lĩnh vực giáo dục và chức năng của não liên quan đến dấu vân tay. '**
  String get hist1985;

  /// No description provided for @hist2004.
  ///
  /// In vi, this message translates to:
  /// **'– Năm 2004: Trung tâm IBMBS (Trung tâm Sinh trắc học Xã hội và Hành vi ứng xử quốc tế) đã xuất bản hơn 7000 luận án về Sinh trắc vân tay. Ngày nay, Mỹ, Nhật Bản, Trung Quốc, Đài Loan áp dụng Sinh trắc vân tay đến các lĩnh vực giáo dục, hy vọng sẽ cải thiện chất lượng giảng dạy và nâng cao hiệu quả học tập bằng cách xác định các phong cách học tập khác nhau.Các nhà nghiên cứu khẳng định độ chính xác của Sinh trắc vân tay rất cao, đó là khả năng dự báo từ các tính năng của tay… '**
  String get hist2004;

  /// No description provided for @histToday.
  ///
  /// In vi, this message translates to:
  /// **'– Ngày nay, Hoa Kỳ, Nhật, Trung Quốc  và Đài Loan đã dụng sinh trắc vân tay trong lĩnh vực giáo dục nhằm nâng cao chất lượng giáo dục và hiệu quả học tâp bằng việc áp dụng nhiều phương pháp học khác nhau. '**
  String get histToday;

  /// No description provided for @mainTypesTitle.
  ///
  /// In vi, this message translates to:
  /// **'Các chủng chính'**
  String get mainTypesTitle;

  /// No description provided for @mainTypeEagle.
  ///
  /// In vi, this message translates to:
  /// **'Chủng Đại Bàng'**
  String get mainTypeEagle;

  /// No description provided for @mainTypeWater.
  ///
  /// In vi, this message translates to:
  /// **'Chủng Nước'**
  String get mainTypeWater;

  /// No description provided for @mainTypeMountain.
  ///
  /// In vi, this message translates to:
  /// **'Chủng Núi'**
  String get mainTypeMountain;

  /// No description provided for @sectionProperties.
  ///
  /// In vi, this message translates to:
  /// **'ĐẶC TÍNH:'**
  String get sectionProperties;

  /// No description provided for @sectionCharacteristics.
  ///
  /// In vi, this message translates to:
  /// **'Đặc điểm:'**
  String get sectionCharacteristics;

  /// No description provided for @sectionAdvantages.
  ///
  /// In vi, this message translates to:
  /// **'Ưu điểm:'**
  String get sectionAdvantages;

  /// No description provided for @sectionDisadvantages.
  ///
  /// In vi, this message translates to:
  /// **'Nhược điểm:'**
  String get sectionDisadvantages;

  /// No description provided for @sectionDevelopment.
  ///
  /// In vi, this message translates to:
  /// **'Phương hướng phát triển:'**
  String get sectionDevelopment;

  /// No description provided for @sectionAttributes.
  ///
  /// In vi, this message translates to:
  /// **' ĐẶC TÍNH: '**
  String get sectionAttributes;

  /// No description provided for @tapToOpenDetail.
  ///
  /// In vi, this message translates to:
  /// **'(Bấm vào hình để mở chi tiết):'**
  String get tapToOpenDetail;

  /// No description provided for @wTitle.
  ///
  /// In vi, this message translates to:
  /// **'Chủng Đại Bàng'**
  String get wTitle;

  /// No description provided for @wRatio.
  ///
  /// In vi, this message translates to:
  /// **' Tỉ lệ: 30% trên thế giới. Vân xoáy có tâm (hoa tay).'**
  String get wRatio;

  /// No description provided for @wSubTypes.
  ///
  /// In vi, this message translates to:
  /// **'CÁC VÂN CON (9 VÂN):'**
  String get wSubTypes;

  /// No description provided for @wCommonTraits.
  ///
  /// In vi, this message translates to:
  /// **'Đặc điểm chung:'**
  String get wCommonTraits;

  /// No description provided for @wEducation.
  ///
  /// In vi, this message translates to:
  /// **'Phương thức giáo dục:'**
  String get wEducation;

  /// No description provided for @wTrait1.
  ///
  /// In vi, this message translates to:
  /// **'- Khó bảo, bướng bỉnh, ko thích bị áp, cứng đầu.'**
  String get wTrait1;

  /// No description provided for @wTrait2.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng tập trung mục tiêu cao, ít bị xao nhãng.'**
  String get wTrait2;

  /// No description provided for @wTrait3.
  ///
  /// In vi, this message translates to:
  /// **'- Bạn thích người khác lắng nghe và tuân thủ sự sắp xếp của bạn. Không thích bị chỉ ra điểm sai.'**
  String get wTrait3;

  /// No description provided for @wTrait4.
  ///
  /// In vi, this message translates to:
  /// **'- Tập trung vào mục tiêu của mình.'**
  String get wTrait4;

  /// No description provided for @wTrait5.
  ///
  /// In vi, this message translates to:
  /// **'- Nội tâm khép kín, ít chia sẻ với người khác, thường thích học tập và chơi một mình hơn là các hoạt động nhóm.'**
  String get wTrait5;

  /// No description provided for @wTrait6.
  ///
  /// In vi, this message translates to:
  /// **'- Tính cá nhân cao nên cái tôi lớn, muốn mình làm trung tâm.'**
  String get wTrait6;

  /// No description provided for @wTrait7.
  ///
  /// In vi, this message translates to:
  /// **'- Mạnh mẽ- Chủ Động- Quyết tâm cao.'**
  String get wTrait7;

  /// No description provided for @wTrait8.
  ///
  /// In vi, this message translates to:
  /// **'- Tự lập, chủ động. Tự thích làm mọi việc.'**
  String get wTrait8;

  /// No description provided for @wTrait9.
  ///
  /// In vi, this message translates to:
  /// **'- Tính cá nhân cao nên đôi khi khó hòa hợp với đội nhóm.'**
  String get wTrait9;

  /// No description provided for @wTrait10.
  ///
  /// In vi, this message translates to:
  /// **'- Có xu hướng muốn áp đặt, thay đổi người khác theo quan điểm của mình.'**
  String get wTrait10;

  /// No description provided for @wTrait11.
  ///
  /// In vi, this message translates to:
  /// **'- Năng động, tính mục tiêu và làm việc chăm chỉ với một sự kiên trì và ý chí mạnh mẽ.'**
  String get wTrait11;

  /// No description provided for @wEdu1.
  ///
  /// In vi, this message translates to:
  /// **'- Không nên mắng trẻ, góp ý trước đông người mà chờ lúc riêng tư, lúc nói chuyện nhẹ nhàng, thoải mái thì mới góp ý nhẹ nhàng.'**
  String get wEdu1;

  /// No description provided for @wEdu2.
  ///
  /// In vi, this message translates to:
  /// **'- Thu nhỏ làm 1 mục tiêu trước, sau đó hoàn thành rồi tiếp tục mục tiêu tiếp theo. Chọn 1 thứ thôi sẽ tuyệt vời hơn.'**
  String get wEdu2;

  /// No description provided for @wEdu3.
  ///
  /// In vi, this message translates to:
  /// **'- Tạo ra những trải nghiệm thực tế giúp họ tự tin hơn.'**
  String get wEdu3;

  /// No description provided for @wEdu4.
  ///
  /// In vi, this message translates to:
  /// **'- Với trẻ có vân tay này, đừng bao giờ dọa.'**
  String get wEdu4;

  /// No description provided for @wEdu5.
  ///
  /// In vi, this message translates to:
  /// **'- Bố mẹ nói là làm, nói 1 là 1, 2 là 2 còn nếu không về sau đừng hòng nói bé nghe.'**
  String get wEdu5;

  /// No description provided for @wEdu6.
  ///
  /// In vi, this message translates to:
  /// **'- Cần cho trẻ tham gia các hoạt động tập thể.'**
  String get wEdu6;

  /// No description provided for @wEdu7.
  ///
  /// In vi, this message translates to:
  /// **'- Không nuông chiều bé quá.'**
  String get wEdu7;

  /// No description provided for @aTitle.
  ///
  /// In vi, this message translates to:
  /// **' Chủng Núi'**
  String get aTitle;

  /// No description provided for @aRatio.
  ///
  /// In vi, this message translates to:
  /// **' Tỉ lệ: 4% trên thế giới. Vân hình núi/sóng (không có hoa tay).'**
  String get aRatio;

  /// No description provided for @aSubTypes.
  ///
  /// In vi, this message translates to:
  /// **'CÁC VÂN CON (5 VÂN):'**
  String get aSubTypes;

  /// No description provided for @aCommonTraits.
  ///
  /// In vi, this message translates to:
  /// **'Đặc điểm chung:'**
  String get aCommonTraits;

  /// No description provided for @aEducation.
  ///
  /// In vi, this message translates to:
  /// **'Phương thức giáo dục:'**
  String get aEducation;

  /// No description provided for @aTrait1.
  ///
  /// In vi, this message translates to:
  /// **'- Là người nhanh giận nhưng cũng nhanh quên (dù rất giận nhưng chỉ cần được nói ngọt thì quên ngay, dễ sống), là người không để bụng.'**
  String get aTrait1;

  /// No description provided for @aTrait2.
  ///
  /// In vi, this message translates to:
  /// **'- Chủng thiên tài vì khả năng hấp thu như miếng bọt biển, hấp thu không ngừng (hấp thu tốt nhất là trước năm 16 tuổi).'**
  String get aTrait2;

  /// No description provided for @aTrait3.
  ///
  /// In vi, this message translates to:
  /// **'- Chậm chắc, từng bước, từng bước một.'**
  String get aTrait3;

  /// No description provided for @aTrait4.
  ///
  /// In vi, this message translates to:
  /// **'- Như một con ong chăm chỉ, làm những việc lặp đi lặp lại hàng ngày cực kì tốt. Rất cẩn thận.'**
  String get aTrait4;

  /// No description provided for @aTrait5.
  ///
  /// In vi, this message translates to:
  /// **'- Thích làm theo những lối mòn, không thích thay đổi (sẽ rất khó sống với những người RL – nước ngược). Muốn thay đổi cần phải từ từ.'**
  String get aTrait5;

  /// No description provided for @aTrait6.
  ///
  /// In vi, this message translates to:
  /// **'- Là người rất đáng tin cậy, có tinh thần trách nhiệm cao. Cam kết nhiệm vụ với sự tuân thủ nghiêm ngặt.'**
  String get aTrait6;

  /// No description provided for @aTrait7.
  ///
  /// In vi, this message translates to:
  /// **'- Thích sự an toàn, công việc và phong cách sống đơn giản, thực tế.'**
  String get aTrait7;

  /// No description provided for @aTrait8.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng kết nối những thành viên trong gia đình.'**
  String get aTrait8;

  /// No description provided for @aTrait9.
  ///
  /// In vi, this message translates to:
  /// **'- Quyết tâm và kiên trì cao.'**
  String get aTrait9;

  /// No description provided for @aTrait10.
  ///
  /// In vi, this message translates to:
  /// **'- Rất chân thành với tình bạn lâu dài, đặc biệt với những người họ tôn trọng.'**
  String get aTrait10;

  /// No description provided for @aTrait11.
  ///
  /// In vi, this message translates to:
  /// **'- Ý thức mạnh mẽ về công lý.'**
  String get aTrait11;

  /// No description provided for @aTrait12.
  ///
  /// In vi, this message translates to:
  /// **'- Thích sự ổn định yên bình. Không thích sự xô bồ, náo nhiệt.'**
  String get aTrait12;

  /// No description provided for @aTrait13.
  ///
  /// In vi, this message translates to:
  /// **'- Không thích tư duy trừu tượng và mơ hồ. Nghi ngờ và hoài nghi về bất cứ điều gì mới.'**
  String get aTrait13;

  /// No description provided for @aTrait14.
  ///
  /// In vi, this message translates to:
  /// **'- Họ có khả năng hướng dẫn cho người khác về các quy trình.'**
  String get aTrait14;

  /// No description provided for @aTrait15.
  ///
  /// In vi, this message translates to:
  /// **'- Nếu có 4 Arch trở lên thì bạn là một người rất tuyệt vời và đặc biệt.'**
  String get aTrait15;

  /// No description provided for @aEdu1.
  ///
  /// In vi, this message translates to:
  /// **'- Với những người này nên hạn chế tranh luận, phân tích dễ gây mất lòng và xung đột khi họ không đồng tình quan điểm.'**
  String get aEdu1;

  /// No description provided for @aEdu2.
  ///
  /// In vi, this message translates to:
  /// **'- Tạo môi trường học tập nhanh và nhiều lên mỗi ngày, họ hấp thu vô hạn.'**
  String get aEdu2;

  /// No description provided for @aEdu3.
  ///
  /// In vi, this message translates to:
  /// **'- Nên cho họ làm việc với WE về tinh thần vì họ hấp thu từ những người thông thái và đem lửa tới cho họ, làm việc với WD vì họ sao chép nhanh.'**
  String get aEdu3;

  /// No description provided for @aEdu4.
  ///
  /// In vi, this message translates to:
  /// **'- Chúng tôi khuyên các bậc phụ huynh có con thuộc chủng vân tay này nên cho con những lời khen khi con làm tốt hoặc cả khi con làm không tốt để bé tự tin vào mình.'**
  String get aEdu4;

  /// No description provided for @aEdu5.
  ///
  /// In vi, this message translates to:
  /// **'- Luôn tạo cho con môi trường thể hiện cái tôi và rèn luyện khả năng đưa ý kiến của con bằng việc hỏi con về các quyết định mà có liên quan đến bé.'**
  String get aEdu5;

  /// No description provided for @aEdu6.
  ///
  /// In vi, this message translates to:
  /// **'- Tạo cho con thói quen đọc sách và tìm hiểu thế giới ngay từ bé để khắc phục sự lười biếng của bé.'**
  String get aEdu6;

  /// No description provided for @lTitle.
  ///
  /// In vi, this message translates to:
  /// **' Chủng Nước'**
  String get lTitle;

  /// No description provided for @lRatio.
  ///
  /// In vi, this message translates to:
  /// **' Tỉ lệ: 65% trên thế giới. Vân móc: không có tâm (không có hoa tay).'**
  String get lRatio;

  /// No description provided for @lSubTypes.
  ///
  /// In vi, this message translates to:
  /// **'CÁC VÂN CON (3 VÂN):'**
  String get lSubTypes;

  /// No description provided for @lCommonTraits.
  ///
  /// In vi, this message translates to:
  /// **'Đặc điểm chung:'**
  String get lCommonTraits;

  /// No description provided for @lEducation.
  ///
  /// In vi, this message translates to:
  /// **'Phương thức giáo dục:'**
  String get lEducation;

  /// No description provided for @lTrait1.
  ///
  /// In vi, this message translates to:
  /// **'- Linh hoạt và thích nghi như nước, rất thích đám đông và cộng đồng.'**
  String get lTrait1;

  /// No description provided for @lTrait2.
  ///
  /// In vi, this message translates to:
  /// **'- Khả năng bắt chước vượt trội (cần phải có hình mẫu), học nhanh trong môi trường và trong xã hội, qua trải nghiệm thành công, thất bại của cuộc sống.'**
  String get lTrait2;

  /// No description provided for @lTrait3.
  ///
  /// In vi, this message translates to:
  /// **'- Sẵn sàng hòa mình vào dòng chảy của cuộc sống.'**
  String get lTrait3;

  /// No description provided for @lTrait4.
  ///
  /// In vi, this message translates to:
  /// **'- Thân thiện, cởi mở - Mở cửa cho những ý tưởng mới.'**
  String get lTrait4;

  /// No description provided for @lTrait5.
  ///
  /// In vi, this message translates to:
  /// **'- Nói chuyện cởi mở, trong công việc thì dễ thương lượng, cả tin (dễ thuyết phục).'**
  String get lTrait5;

  /// No description provided for @lTrait6.
  ///
  /// In vi, this message translates to:
  /// **'- Thích được khen, thích được động viên, không thích xung đột, mâu thuẫn; buồn khi bị chê bai, so sánh với người khác (chán luôn, chẳng muốn làm nữa).'**
  String get lTrait6;

  /// No description provided for @lTrait7.
  ///
  /// In vi, this message translates to:
  /// **'- Thích được chia sẻ, tâm sự cũng như lắng nghe người khác, dễ mủi lòng, đồng cảm.'**
  String get lTrait7;

  /// No description provided for @lTrait8.
  ///
  /// In vi, this message translates to:
  /// **'- Thích hoạt động cộng đồng, giao tiếp, từ thiện…'**
  String get lTrait8;

  /// No description provided for @lTrait9.
  ///
  /// In vi, this message translates to:
  /// **'- Khác với chủng đại bàng, người chủng nước tính quyết đoán không cao.'**
  String get lTrait9;

  /// No description provided for @lTrait10.
  ///
  /// In vi, this message translates to:
  /// **'- Kết nối đám đông, cộng đồng tốt.'**
  String get lTrait10;

  /// No description provided for @lEdu1.
  ///
  /// In vi, this message translates to:
  /// **'- Cần sự động viên và khích lệ thông qua những lời khen, những câu nói khích lệ chứ không phải những lời chê bai.'**
  String get lEdu1;

  /// No description provided for @lEdu2.
  ///
  /// In vi, this message translates to:
  /// **'- Nếu bạn là chủng nước, bạn cần 1 nhà lãnh đạo, quản lý tốt.'**
  String get lEdu2;

  /// No description provided for @lEdu3.
  ///
  /// In vi, this message translates to:
  /// **'- Tìm những người sở hữu vân tay chủng đại bàng tốt để hợp tác làm ăn.'**
  String get lEdu3;

  /// No description provided for @lEdu4.
  ///
  /// In vi, this message translates to:
  /// **'- Bạn thương người nên dễ bị dụ lắm. Nên cẩn thận đừng vội cả tin mà hãy thảo luận với những người thân trước.'**
  String get lEdu4;

  /// No description provided for @lEdu5.
  ///
  /// In vi, this message translates to:
  /// **'- Bàn tay bạn nhiều chủng Loop quá nên tìm đến những người chủng WE truyền lửa , những người sở hữu chủng WT mục tiêu cao.'**
  String get lEdu5;

  /// No description provided for @wsTitle.
  ///
  /// In vi, this message translates to:
  /// **'Vân Đại Bàng WS'**
  String get wsTitle;

  /// No description provided for @wsChar1.
  ///
  /// In vi, this message translates to:
  /// **'- 1 tâm, 2 giao điểm – tâm là vòng tròn hở xoáy trôn ốc.'**
  String get wsChar1;

  /// No description provided for @wsChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Mạnh mẽ, tự tin, quyết đoán và tự lập.'**
  String get wsChar2;

  /// No description provided for @wsChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Tính tự quản cao, suy nghĩ quyết đoán.'**
  String get wsChar3;

  /// No description provided for @wsChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Tự thúc đẩy, chủ động hoàn thiện bản thân.'**
  String get wsChar4;

  /// No description provided for @wsChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Có xu hướng chỉ huy, không thích sự áp đặt tuy nhiên đôi khi có xu hướng áp đặt và lấn át người khác.'**
  String get wsChar5;

  /// No description provided for @wsChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Là mẫu người có thế giới nội tâm phong phú mà người khác thường không hiểu được.'**
  String get wsChar6;

  /// No description provided for @wsChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Chủ quan, cái tôi cao, chủ nghĩa cá nhân, rất khó bị thuyết phục và ảnh hưởng.'**
  String get wsChar7;

  /// No description provided for @wsChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Tính kỉ luật và đòi hỏi ở bản thân cao, không chấp nhận thất bại.'**
  String get wsChar8;

  /// No description provided for @wsChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng lãnh đạo, khả năng kiểm soát cảm xúc và điều phối công việc tốt.'**
  String get wsChar9;

  /// No description provided for @wsChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Kiên trì thực hiện công việc một cách nghiêm túc và đam mê. Thường nỗ lực trong một khoảng thời gian dài vào bất cứ công việc gì mà họ cảm thấy quan trọng để hoàn thành mục tiêu của mình, ít nản chí.'**
  String get wsChar10;

  /// No description provided for @wsChar11.
  ///
  /// In vi, this message translates to:
  /// **'- Một phẩm chất dễ giúp cá nhân này thành công đó là \"sự kiên định\".'**
  String get wsChar11;

  /// No description provided for @wsChar12.
  ///
  /// In vi, this message translates to:
  /// **'- Rất quan tâm đến hình ảnh cá nhân, đề cao sự rõ ràng trong các mối quan hệ cũng như công việc. '**
  String get wsChar12;

  /// No description provided for @wsAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Khả năng nhận thức cao, không dễ dàng bị tác động.'**
  String get wsAdv1;

  /// No description provided for @wsAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Tự lập, luôn có tinh thần chiến đấu mạnh mẽ, thích chinh phục, không nản lòng trước khó khăn, thử thách và luôn tự động viên bản thân.'**
  String get wsAdv2;

  /// No description provided for @wsAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Có phong cách riêng. Sống bằng lí trí hơn tình cảm, mạnh mẽ.'**
  String get wsAdv3;

  /// No description provided for @wsAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Biết cách để đạt được mục tiêu, và luôn chủ động trong công việc.'**
  String get wsAdv4;

  /// No description provided for @wsAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Kiên định với mục tiêu và không dễ dàng từ bỏ.'**
  String get wsAdv5;

  /// No description provided for @wsAdv6.
  ///
  /// In vi, this message translates to:
  /// **'- Luôn hoàn thiện bản thân trở nên chuyện nghiệp. Họ luôn có suy nghĩ tích cực.'**
  String get wsAdv6;

  /// No description provided for @wsDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Đôi khi tư duy hơi cứng nhắc, nếu lặp lại nhiều sẽ hình thành nên tính bảo thủ.'**
  String get wsDisadv1;

  /// No description provided for @wsDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Thường khó chấp nhận thất bại của bản thân cũng như người khác.'**
  String get wsDisadv2;

  /// No description provided for @wsDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Khi gặp thất bại thường tự mình chịu đựng, hay gặp vấn đề về mối quan hệ.'**
  String get wsDisadv3;

  /// No description provided for @wsDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Không thích lắng nghe lời khuyên, ý kiến của người khác nên hay xảy ra những thất bại không đáng có.'**
  String get wsDisadv4;

  /// No description provided for @wsDisadv5.
  ///
  /// In vi, this message translates to:
  /// **'- Nếu tuýp người này không xác định được mục tiêu của bản thân, họ sẽ dễ trở nên chán nản và rất tiêu cực.'**
  String get wsDisadv5;

  /// No description provided for @wsDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Xây dựng cho mình một mục tiêu dài hạn 5 -10 – 20 năm rồi chia nhỏ thành từng năm – từng tháng thậm chí là từng ngày. Điều đó sẽ giúp WS duy trì được năng lượng tích cực và tinh thần vượt khó giúp WS kích hoạt được mọi tố chất của mình.'**
  String get wsDev1;

  /// No description provided for @wsDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Nếu không có mục tiêu sẽ khiến WS rơi vào trạng thái mất phương hướng và khó thành công như WS đáng có.'**
  String get wsDev2;

  /// No description provided for @wsDev3.
  ///
  /// In vi, this message translates to:
  /// **'- WS cần tránh ép buộc người khác theo tiêu chuẩn và mong đợi riêng của bản thân, sẽ gây áp lực, mệt mỏi cho bản thân và mọi người.'**
  String get wsDev3;

  /// No description provided for @wsDev4.
  ///
  /// In vi, this message translates to:
  /// **'- WS cần cân nhắc giữa lợi ích bản thân và lợi ích của người khác, kiên nhẫn lắng nghe và đặt mình vào vị trí của người khác để hiểu họ hơn, sẽ tạo được niềm tin, sự quý trọng và mối quan hệ tốt đẹp hơn.'**
  String get wsDev4;

  /// No description provided for @wsDev5.
  ///
  /// In vi, this message translates to:
  /// **'- WS hãy gia tăng hoạt động đội nhóm để tối đa hóa điểm mạnh của tập thể. Tham gia các hoạt động – giao tiếp và phát triển kỹ năng giao tiếp.'**
  String get wsDev5;

  /// No description provided for @wsDev6.
  ///
  /// In vi, this message translates to:
  /// **'- WS cũng cần duy trì thái độ cởi mở, tránh cao ngạo vô ý.'**
  String get wsDev6;

  /// No description provided for @wsDev7.
  ///
  /// In vi, this message translates to:
  /// **'- WS cần học cách giao việc và tập trung vào giá trị và điểm mạnh của mọi người thay vì chỉ nhìn vào điểm yếu của họ.'**
  String get wsDev7;

  /// No description provided for @wsDev8.
  ///
  /// In vi, this message translates to:
  /// **'- WS cần học cách chia sẻ cảm xúc, khó khăn của bản thân với mọi người để tránh căng thẳng, nếu không thể học cách chia sẻ thì có thể chọn phương án viết nhật ký, khi nóng giận thì hãy xả giận của mình bằng cách hít thở sâu và viết xuống mọi bức bối của mình sau đó thì xé đi như vậy cũng giúp cho WS giảm bớt căng thẳng và bức xúc.'**
  String get wsDev8;

  /// No description provided for @wsComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Khi giao tiếp với WS: cần ngắn gọn, tập trung vào vấn đề chính. Lưu ý tới điều họ quan tâm.'**
  String get wsComm1;

  /// No description provided for @wsComm2.
  ///
  /// In vi, this message translates to:
  /// **'- WS cần được Tôn trọng và tránh áp đặt, và chỉ nên đề cập khuyết điểm/ lỗi sai của họ ở nơi riêng tư. Khen trong sáng chê trong tối.'**
  String get wsComm2;

  /// No description provided for @wsComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Khi giao tiếp với WS nếu vấn đề trở nên gay gắt không nên tiếp tục tranh luận.'**
  String get wsComm3;

  /// No description provided for @wsComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Nên thông báo hoặc thảo luận trước kế hoạch tránh việc đưa WS vào sự việc đã rồi.'**
  String get wsComm4;

  /// No description provided for @wsComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Cần khen ngợi và tưởng thưởng kịp thời nếu WS hoàn thành tốt nhiệm vụ.'**
  String get wsComm5;

  /// No description provided for @wsComm6.
  ///
  /// In vi, this message translates to:
  /// **'- Tránh áp đặt WS hãy đưa ra lựa chọn cùng lợi ích của việc cần làm thay vì đưa ra mệnh lệnh. Hoặc có thể đưa ra 2 sự lựa chọn để WS tự lựa chọn thay vì chỉ có 1.'**
  String get wsComm6;

  /// No description provided for @wsComm7.
  ///
  /// In vi, this message translates to:
  /// **'- WS cần để bản thân tự quyết định những việc nằm trong khả năng của mình thay vì nhờ người khác quyết định hộ hoặc làm giúp.'**
  String get wsComm7;

  /// No description provided for @wsCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân WS:'**
  String get wsCommTitle;

  /// No description provided for @wtTitle.
  ///
  /// In vi, this message translates to:
  /// **'Vân Đại Bàng WT'**
  String get wtTitle;

  /// No description provided for @wtChar1.
  ///
  /// In vi, this message translates to:
  /// **'- 1 tâm, 2 giao điểm – tâm khép kín'**
  String get wtChar1;

  /// No description provided for @wtChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Độc lập, nhanh chóng, chủ động. Tính tự quản cao, suy nghĩ quyết đoán, mạnh mẽ.'**
  String get wtChar2;

  /// No description provided for @wtChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Định hướng mục tiêu rõ ràng, tập trung, kiên trì và quyết liệt với mục tiêu đã đề ra.'**
  String get wtChar3;

  /// No description provided for @wtChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Tự thúc đẩy, chủ động hoàn thiện bản thân. Đề cao tác phong chuyên nghiệp, rất quan tâm đến hình ảnh cá nhân.'**
  String get wtChar4;

  /// No description provided for @wtChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Tự cô lập bản thân mình, SỐNG KHÉP KÍN VÀ NỘI TÂM, khó thổ lộ cảm xúc.'**
  String get wtChar5;

  /// No description provided for @wtChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Cạnh tranh mạnh mẽ, nỗ lực để chiến thắng và thành công. Khuynh hướng phân tích và tự nghiên cứu.'**
  String get wtChar6;

  /// No description provided for @wtChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Thích thể hiện (đôi lúc cho mình là trung tâm), có xu hướng chỉ huy, đôi khi áp đặt và lấn át người khác.'**
  String get wtChar7;

  /// No description provided for @wtChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Thẳng thắn, nóng tính, đôi khi không kiểm soát được cảm xúc.'**
  String get wtChar8;

  /// No description provided for @wtChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Chủ quan, cái tôi cao, chủ nghĩa cá nhân, rất khó bị thuyết phục và ảnh hưởng (Trừ khi đó là người mình nể trọng, có kiến thức chuyên sâu hoặc có chứng thực rõ rang, cụ thể).'**
  String get wtChar9;

  /// No description provided for @wtChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Mọi người có thể cảm thấy áp lực khi làm việc cùng vì cực kì tập trung và nghiêm túc.'**
  String get wtChar10;

  /// No description provided for @wtChar11.
  ///
  /// In vi, this message translates to:
  /// **'- Tính kỉ luật và đòi hỏi ở bản thân cao, không chấp nhận thất bại.'**
  String get wtChar11;

  /// No description provided for @wtChar12.
  ///
  /// In vi, this message translates to:
  /// **'- Wt khó chia sẻ và khó thổ lộ.'**
  String get wtChar12;

  /// No description provided for @wtAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Bạn là mẫu người trầm tính, cứng rắn và khó thổ lộ cảm xúc.'**
  String get wtAdv1;

  /// No description provided for @wtAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Có ý chí và tinh thần vững vàng, suy nghĩ mạnh mẽ và độc lập. Có mục tiêu cao.'**
  String get wtAdv2;

  /// No description provided for @wtAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Khả năng tuyệt vời trong việc sắp xếp và lên kế hoạch rõ ràng.'**
  String get wtAdv3;

  /// No description provided for @wtAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Bạn có sức mạnh cá nhân lớn và phong thái mạnh mẽ giúp đạt được mục tiêu mình đề ra.'**
  String get wtAdv4;

  /// No description provided for @wtAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Tự suy nghĩ, tự lập luận và quyết định trong hành động.'**
  String get wtAdv5;

  /// No description provided for @wtAdv6.
  ///
  /// In vi, this message translates to:
  /// **'- Tinh thần trách nhiệm cao.'**
  String get wtAdv6;

  /// No description provided for @wtAdv7.
  ///
  /// In vi, this message translates to:
  /// **'- Đối với bạn, công việc quan trọng hơn tất cả, nó lấy đi phần lớn thời gian trong ngày của bạn.'**
  String get wtAdv7;

  /// No description provided for @wtDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Thường khó chấp nhận thất bại của bản thân cũng như người khác.'**
  String get wtDisadv1;

  /// No description provided for @wtDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Khi gặp thất bại hoặc đổ vỡ thường tự mình chịu đựng.'**
  String get wtDisadv2;

  /// No description provided for @wtDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Không thích lắng nghe lời khuyên, ý kiến của người khác nên hay xảy ra những thất bại không đáng có.'**
  String get wtDisadv3;

  /// No description provided for @wtDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Vì không cảm thấy thoải mái khi bộc lộ cảm giác yêu thích và cảm xúc của mình với người khác nên hay bị hiểu lầm là lạnh nhạt, vô cảm.'**
  String get wtDisadv4;

  /// No description provided for @wtDisadv5.
  ///
  /// In vi, this message translates to:
  /// **'- Nếu tuýp người này không xác định được mục tiêu của bản thân, họ sẽ dễ trở nên chán nản và rất tiêu cực.'**
  String get wtDisadv5;

  /// No description provided for @wtDisadv6.
  ///
  /// In vi, this message translates to:
  /// **'- Quan tâm và thể hiện tình cảm ra bên ngoài đặc biệt là với người thân để tránh sự hiểu lầm là lạnh lùng, vô cảm.'**
  String get wtDisadv6;

  /// No description provided for @wtDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Học tính kiên nhẫn, khả năng thích ứng với môi trường.'**
  String get wtDev1;

  /// No description provided for @wtDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Cống hiến, định vị lãnh đạo, phát triển nhận thức từ trải nghiệm.'**
  String get wtDev2;

  /// No description provided for @wtDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Học thêm kỹ năng thiết lập và quản lý mục tiêu, có thể đặt mục tiêu theo nguyên tắc SMART sẽ giúp họ phát huy lợi thế của bản thân và dễ dàng đạt được sự thành công trong công việc.'**
  String get wtDev3;

  /// No description provided for @wtDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Đối với trẻ em: Khuyến khích và tạo động lực cho trẻ mỗi ngày để trẻ có thể học hỏi từ thất bại, nhận ra thất bại, mạnh mẽ và dũng cảm hơn khi đối mặt với thất bại.'**
  String get wtDev4;

  /// No description provided for @wtCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân WT:'**
  String get wtCommTitle;

  /// No description provided for @wtComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Đối với người sở hữu mẫu vân tay WT, họ phù hợp với phong cách giao tiếp dân chủ, mang tính xây dựng nhiều hơn là chiều hướng chiếm hữu hoặc áp đảo.'**
  String get wtComm1;

  /// No description provided for @wtComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Thuyết phục nhẹ nhàng sẽ hiệu quả hơn là ép buộc.'**
  String get wtComm2;

  /// No description provided for @wtComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Nên nhắc nhở ít, không nên nhắc nhiều, nếu nhắc nhiều dễ cáu.'**
  String get wtComm3;

  /// No description provided for @wtComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Nên kiểm điểm riêng, tránh phê bình trước mặt người khác vì họ có tự trọng cao.'**
  String get wtComm4;

  /// No description provided for @weTitle.
  ///
  /// In vi, this message translates to:
  /// **'Vân Đại Bàng WE'**
  String get weTitle;

  /// No description provided for @weChar1.
  ///
  /// In vi, this message translates to:
  /// **'- 1 tâm, 2 giao điểm – vòng tròn quanh tâm dày hơn.'**
  String get weChar1;

  /// No description provided for @weChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Định hướng và tập trung mục tiêu, giỏi trong việc thiết lập mục tiêu cũng như lập kế hoạch chi tiết.'**
  String get weChar2;

  /// No description provided for @weChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng truyền lửa, truyền cảm xúc.'**
  String get weChar3;

  /// No description provided for @weChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Tiêu chuẩn cao, phân tích tỉ mỉ, quan tâm tới chất lượng, sự chính xác và hoàn hảo. '**
  String get weChar4;

  /// No description provided for @weChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Tính kỷ luật và đòi hỏi ở bản thân cao.'**
  String get weChar5;

  /// No description provided for @weChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Bị tình cảm, cảm xúc chi phối (đôi khi vì tình cảm mà thay đổi quyết định).'**
  String get weChar6;

  /// No description provided for @weChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Nỗ lực để chiến thắng và thàng công, không chấp nhận thất bại.'**
  String get weChar7;

  /// No description provided for @weChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Là người lương thiện, không làm hại được ai (nếu làm hại ai thì lương tâm sẽ rất cắn rứt và cảm thấy tội lỗi).'**
  String get weChar8;

  /// No description provided for @weChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Làm việc có hệ thống, luôn tự đặt ra và duy trì hệ thống. Đề cao tác phong chuyên nghiệp, rất quan tâm đến hình ảnh cá nhân.'**
  String get weChar9;

  /// No description provided for @weChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Cần rèn luyện tính kiên trì sẽ có cơ hội thành công cao.'**
  String get weChar10;

  /// No description provided for @weChar11.
  ///
  /// In vi, this message translates to:
  /// **'- Chủ quan, cái tôi cao, chủ nghĩa cá nhân, rất khó bị thuyết phục và ảnh hưởng (trừ khi đó là người mình nể trọng, có kiến thức chuyên sâu hoặc có chứng thực cụ thể).'**
  String get weChar11;

  /// No description provided for @weChar12.
  ///
  /// In vi, this message translates to:
  /// **'- Thích chỉ đạo, quyết đoán, đôi khi cho mình là trung tâm, dẫn đến áp đặt người khác; ý chí mạnh mẽ, quyết tâm cao.'**
  String get weChar12;

  /// No description provided for @weChar13.
  ///
  /// In vi, this message translates to:
  /// **'- Dễ dàng bị vướng giữa khía cạnh logic/lý trí và cảm xúc, có xu hướng lo lắng thái quá, nghĩ đến những rủi ro tiêu cực. Hay hồi hộp, thay đổi tâm trạng đột ngột.'**
  String get weChar13;

  /// No description provided for @weChar14.
  ///
  /// In vi, this message translates to:
  /// **'- Thẳng thắn, nóng tính, đôi khi không kiểm soát được cảm xúc.'**
  String get weChar14;

  /// No description provided for @weAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Tầm nhìn xa trông rộng.'**
  String get weAdv1;

  /// No description provided for @weAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Chỉnh chu và cầu toàn trong công việc, hay lo sợ kết quả xấu trong công việc, đời sống.'**
  String get weAdv2;

  /// No description provided for @weAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Tổng hợp các suy nghĩ, dự đoán và lường trước kết quả hoàn thành.'**
  String get weAdv3;

  /// No description provided for @weAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng thúc đẩy năng lượng, xúc cảm cho những người xung quanh.'**
  String get weAdv4;

  /// No description provided for @weAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Mẫu người đi đầu và làm gương trong vấn đề mang tính kỷ luật, nội quy cơ quan, công sở.'**
  String get weAdv5;

  /// No description provided for @weAdv6.
  ///
  /// In vi, this message translates to:
  /// **'- Khả năng nhìn nhận và đánh giá năng lực người khác khá tốt, khả năng xây dựng đội nhóm và phân công nhiệm vụ cho người khác cùng tham gia.'**
  String get weAdv6;

  /// No description provided for @weDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Thường bị cảm xúc chi phối.'**
  String get weDisadv1;

  /// No description provided for @weDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Đôi khi lo lắng thái quá.'**
  String get weDisadv2;

  /// No description provided for @weDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Họ bị sự cầu toàn chi phối trong công việc nên đôi khi loay hoay, dẫn đến không tập trung và đạt kế quả không như mong muốn.'**
  String get weDisadv3;

  /// No description provided for @weDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Do bị cảm xúc chi phối nên dễ bị tổn thương.'**
  String get weDisadv4;

  /// No description provided for @weDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Cân bằng cảm xúc, khi giỏi cái gì rồi phải nên tự tin, không nên lo lắng quá.'**
  String get weDev1;

  /// No description provided for @weDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Nghĩ đơn giản, lập kế hoạch lên cũng không nên quá lo lắng.'**
  String get weDev2;

  /// No description provided for @weDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Hãy luôn duy trì cảm xúc tích cực trong mình, WE sẽ trở thành những con người tiên phong, đầy hứng khởi và truyền cảm hứng bất tận tới mọi người. Đó cũng chính là nguồn động lực để WE luôn hết mình tiến xa hơn trên con đường sự nghiệp, cuộc sống.'**
  String get weDev3;

  /// No description provided for @weDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Đừng bao giờ để những cảm xúc tiêu cực tác động vào mình để mình trở thành kẻ bị chi phối bởi cảm xúc. Đó chính là hố chôn WE.'**
  String get weDev4;

  /// No description provided for @weDev5.
  ///
  /// In vi, this message translates to:
  /// **'- Keyword để WE thành công trong cuộc sống là hãy quản trị được cảm xúc của mình và biến cảm xúc thành vũ khí lợi hại.'**
  String get weDev5;

  /// No description provided for @weDev6.
  ///
  /// In vi, this message translates to:
  /// **'- Biết được khi nào một cái gì đó là \"đủ tốt\" và coi đó như là đã hoàn tất. Hãy vui tươi, thoải mái trải nghiệm, nuôi dưỡng sự thanh thản cho tâm hồn.'**
  String get weDev6;

  /// No description provided for @weDev7.
  ///
  /// In vi, this message translates to:
  /// **'- Gia tăng hoạt động đội nhóm để tối đa hóa điểm mạnh của tập thể. Tham gia các hoạt động phát triển kỹ năng giao tiếp.'**
  String get weDev7;

  /// No description provided for @weCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân WE:'**
  String get weCommTitle;

  /// No description provided for @weComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Nên thông báo và thảo luận trước kế hoạch.'**
  String get weComm1;

  /// No description provided for @weComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Khi hoàn thành nhiệm vụ nên khen ngợi và thưởng.'**
  String get weComm2;

  /// No description provided for @weComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Hình thành kỹ năng quản lý trạng thái cảm xúc của bản thân cho cá nhân này.'**
  String get weComm3;

  /// No description provided for @weComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Chia sẻ và giúp họ phân tích trước những tình huống.'**
  String get weComm4;

  /// No description provided for @weComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Đưa ra lựa chọn cùng lợi ích của việc cần làm thay vì đưa ra mệnh lệnh.'**
  String get weComm5;

  /// No description provided for @weComm6.
  ///
  /// In vi, this message translates to:
  /// **'- Để trẻ quyết định những việc nằm trong khả năng thay vì ba mẹ tự quyết định hoặc làm giúp.'**
  String get weComm6;

  /// No description provided for @wcTitle.
  ///
  /// In vi, this message translates to:
  /// **'Vân Đại Bàng WC'**
  String get wcTitle;

  /// No description provided for @wcChar1.
  ///
  /// In vi, this message translates to:
  /// **'- 2 tâm, 2 giao điểm – hai dòng xoáy tạo thành vòng tròn thái cực xoáy tròn vào nhau.'**
  String get wcChar1;

  /// No description provided for @wcChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Người có cái nhìn đa chiều về một vấn đề, cũng từ đó bạn có thể đọc vị được cảm xúc và nhu cầu của người đối diện.'**
  String get wcChar2;

  /// No description provided for @wcChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Trong những mối quan hệ hay công việc, bạn nhìn rõ ràng được đâu là điểm mạnh và đâu là điểm chưa mạnh trong đó và cũng chính từ đó bạn có thể đọc vị rõ ràng được vấn đề và nhu cầu của mối quan hệ hay công việc đó. Đây là điểm mạnh tuyệt vời mà không phải ai cũng có được.'**
  String get wcChar3;

  /// No description provided for @wcChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Cũng chính từ sự hướng ngoại, linh hoạt, giao tiếp trung tính và khả năng nhìn nhận đa chiều vấn đề mà WC có tố chất về đàm phán, thương lượng.'**
  String get wcChar4;

  /// No description provided for @wcChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Ở mặt khác, bạn là người đa mục tiêu, đa kế hoạch và thích làm nhiều việc cùng một lúc.'**
  String get wcChar5;

  /// No description provided for @wcChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Khi bạn vào làm rồi, dù làm được hay không làm được thì bạn hay bị cả thèm chóng chán và hay thích đổi mới công việc.'**
  String get wcChar6;

  /// No description provided for @wcChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Là những người hay suy nghĩ nhiều, điều đó dẫn đến mệt mỏi cho bạn.'**
  String get wcChar7;

  /// No description provided for @wcChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Bạn hứng thú với những thử thách, khám phá những điều mới lạ và có phong cách độc đáo. Đó cũng chính là những KEY giúp bạn có những bước tiến đột phá trong đời.'**
  String get wcChar8;

  /// No description provided for @wcAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Đa mục tiêu, có sự đa dạng trong các kế hoạch, có thể cùng đồng thời thực hiện và làm nhiều việc khác nhau cùng một lúc, nhiều mục tiêu.'**
  String get wcAdv1;

  /// No description provided for @wcAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Nhiệt tình, thân thiện, thiết lập mối quan hệ nhanh chóng.'**
  String get wcAdv2;

  /// No description provided for @wcAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng nhìn thấy hai mặt của một vấn đề.'**
  String get wcAdv3;

  /// No description provided for @wcAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Khả năng giao tiếp, phối hợp, thương lượng tốt.'**
  String get wcAdv4;

  /// No description provided for @wcAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Sống tình cảm, thích chia sẻ.'**
  String get wcAdv5;

  /// No description provided for @wcAdv6.
  ///
  /// In vi, this message translates to:
  /// **'- Dễ thích nghi, thích tự do, không ràng buộc.'**
  String get wcAdv6;

  /// No description provided for @wcAdv7.
  ///
  /// In vi, this message translates to:
  /// **'- Suy nghĩ nhiều, PR tốt, giàu ý tưởng.'**
  String get wcAdv7;

  /// No description provided for @wcAdv8.
  ///
  /// In vi, this message translates to:
  /// **'- Đề cao tinh thần hợp tác đội nhóm, thích hỏi và chia sẻ quan điểm với mọi người xung quanh. Khả năng phối hợp trong công việc cao.'**
  String get wcAdv8;

  /// No description provided for @wcDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Làm việc theo phong cách \"nước đến chân mới nhảy\".'**
  String get wcDisadv1;

  /// No description provided for @wcDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Do dự, tiêu chuẩn kép.'**
  String get wcDisadv2;

  /// No description provided for @wcDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Dễ thay đổi, thiếu kế hoạch.'**
  String get wcDisadv3;

  /// No description provided for @wcDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Đốt cháy giai đoạn.'**
  String get wcDisadv4;

  /// No description provided for @wcDisadv5.
  ///
  /// In vi, this message translates to:
  /// **'- Đa mục tiêu đôi khi dễ bị lan man, mất tập trung.'**
  String get wcDisadv5;

  /// No description provided for @wcDisadv6.
  ///
  /// In vi, this message translates to:
  /// **'- Hay suy nghĩ nhiều, điều đó dẫn đến mệt mỏi cho bạn.'**
  String get wcDisadv6;

  /// No description provided for @wcDisadv7.
  ///
  /// In vi, this message translates to:
  /// **'- Chủng WC không phải là nhóm người quyết đoán, thường xuyên chần chừ, dễ thay đổi, họ làm việc theo cảm xúc, ít khi lập kế hoạch lâu dài.'**
  String get wcDisadv7;

  /// No description provided for @wcDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Nên học cách lập kế hoạch trong công việc cũng như cuộc sống, làm lần lượt từng công việc một thay vì ôm đồm cùng lúc nhiều việc.'**
  String get wcDev1;

  /// No description provided for @wcDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Khả năng giao tiếp của WC rất tốt nên đừng quên tận dụng điểm mạnh này của mình để tiến xa hơn trong sự nghiệp.'**
  String get wcDev2;

  /// No description provided for @wcDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Có tố chất về đàm phán, thương lượng.'**
  String get wcDev3;

  /// No description provided for @wcDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Hãy đổi mới cách làm việc, bối cảnh làm việc chứ đừng nên đổi mới công việc nếu như thực sự mình chưa cần đổi mới.'**
  String get wcDev4;

  /// No description provided for @wcDev5.
  ///
  /// In vi, this message translates to:
  /// **'- Hãy biết cách phân tích được mất trong vấn đề, hay nhiều việc có thể xét trên góc độ việc bắt buộc, cần hay nên làm.'**
  String get wcDev5;

  /// No description provided for @wcDev6.
  ///
  /// In vi, this message translates to:
  /// **'- Hãy biết thách thức chính bản thân mình liên tục để tạo ra những sức bật của cuộc đời.'**
  String get wcDev6;

  /// No description provided for @wcCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân WC:'**
  String get wcCommTitle;

  /// No description provided for @wcComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Không nên áp đặt, nên thông báo và thảo luận trước kế hoạch. Đưa ra sự lựa chọn cùng lợi ích việc cần làm thay vì mệnh lệnh.'**
  String get wcComm1;

  /// No description provided for @wcComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Định hướng và theo sát kế hoạch, và có mốc thời gian hoàn thành.'**
  String get wcComm2;

  /// No description provided for @wdTitle.
  ///
  /// In vi, this message translates to:
  /// **'Vân Đại Bàng WD'**
  String get wdTitle;

  /// No description provided for @wdChar1.
  ///
  /// In vi, this message translates to:
  /// **'- 2 tâm, 2 giao điểm – hình dạng hai dấu móc ngược nhau.'**
  String get wdChar1;

  /// No description provided for @wdChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể tương tác và đa dạng đối tượng, thuận lợi trong các lĩnh vực giao tiếp và quan hệ công chúng.'**
  String get wdChar2;

  /// No description provided for @wdChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Thích ứng cao với môi trường , hội nhập nhanh. Có thể thích nghi và chấp nhận những điều mới mẻ, những ý tưởng và khái niệm mới dễ dàng.'**
  String get wdChar3;

  /// No description provided for @wdChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Suy nghĩ theo nhiều chiều hướng, đa góc nhìn. Luôn có \"phương án B\", thực hiện nhiều phương pháp khác nhau để đạt được mục tiêu.'**
  String get wdChar4;

  /// No description provided for @wdChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Tò mò, hứng thú nhiều lĩnh vực, thích điều mới mẻ và sự đổi mới. Có xu hướng theo đuổi nhiều mục tiêu, khó khăn trong việc kiểm soát quá trình thực hiện.'**
  String get wdChar5;

  /// No description provided for @wdChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Thiên hướng suy nghĩ quá nhiều dẫn đến sự mất tập trung và thay đổi mục tiêu hay định hướng.'**
  String get wdChar6;

  /// No description provided for @wdChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Dễ bị người khác ảnh hưởng và làm lung lay. Hay do dự, lưỡng lự khi suy nghĩ ở nhiều khía cạnh khác nhau.'**
  String get wdChar7;

  /// No description provided for @wdChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Linh hoạt, có nhiếu cách ứng xử khác nhau, thay đổi nguyên tắc và lập trường tùy thuộc vào tình thế.'**
  String get wdChar8;

  /// No description provided for @wdChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng mở rộng và liên kết thông tin, khéo léo hài hòa giữa nguồn lực và thông tin.'**
  String get wdChar9;

  /// No description provided for @wdChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Nóng tính nhưng có thể kiểm soát được.'**
  String get wdChar10;

  /// No description provided for @wdChar11.
  ///
  /// In vi, this message translates to:
  /// **'- Đề cao tinh thần hợp tác đội nhóm, thích hỏi và chia sẻ quan điểm với mọi người xung quanh.'**
  String get wdChar11;

  /// No description provided for @wdChar12.
  ///
  /// In vi, this message translates to:
  /// **'- Luôn muốn được khen ngợi và tôn trọng.'**
  String get wdChar12;

  /// No description provided for @wdAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Mẫu người thân thiện, nhiệt tình. Có tố chất, năng lực và nhiều kỹ năng, thường giỏi ở nhiều mặt và hứng thú với nhiều lĩnh vực khác.'**
  String get wdAdv1;

  /// No description provided for @wdAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng giao tiếp tốt, thích chia sẻ.'**
  String get wdAdv2;

  /// No description provided for @wdAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng giải quyết vấn đề theo nhiều chiều hướng khác nhau bằng nhiều cách khác nhau.'**
  String get wdAdv3;

  /// No description provided for @wdAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Rất linh hoạt và thoải mái, thích nghi tốt ở mọi hoàn cảnh khác nhau \"ở bầu thì tròn, ở ống thì dài\".'**
  String get wdAdv4;

  /// No description provided for @wdDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể đạt được những thành quả cao từ những việc bạn cảm thấy hứng thú, tuy nhiên rất mau chóng chán nản và thường không làm đến nơi đến chốn. '**
  String get wdDisadv1;

  /// No description provided for @wdDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Khó tập trung.'**
  String get wdDisadv2;

  /// No description provided for @wdDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Việc tập trung quá nhiều mục tiêu cùng một lúc sẽ khó đạt được mục tiêu hoàn hảo.'**
  String get wdDisadv3;

  /// No description provided for @wdDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Không thích thảo kế hoạch, thường làm theo phong cách \"nước đến chân mới nhảy\".'**
  String get wdDisadv4;

  /// No description provided for @wdDisadv5.
  ///
  /// In vi, this message translates to:
  /// **'- Không thích làm những công việc đòi hỏi sự lặp đi lặp lại mang tính khuôn khổ.'**
  String get wdDisadv5;

  /// No description provided for @wdDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Giỏi giao tiếp nên sẽ là 1 người sale đại tài.'**
  String get wdDev1;

  /// No description provided for @wdDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Kế hoạch phải được lập trước thật rõ ràng, cụ thể để nhìn rõ vấn đề, giá trị, mục tiêu của mỗi việc mình chọn làm.'**
  String get wdDev2;

  /// No description provided for @wdDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Học và thực hành phương pháp quản lý tốt thời gian, Ưu tiên công việc theo tầm quan trọng và độ cấp bách. Thực hiện lần lượt từng việc.'**
  String get wdDev3;

  /// No description provided for @wdDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Tăng cường kỹ năng chuyên môn. Tránh việc trở thành \"thợ\" của tất cả ngành nghề mà không chuyên về nghề nào cụ thể.'**
  String get wdDev4;

  /// No description provided for @wdDev5.
  ///
  /// In vi, this message translates to:
  /// **'- Duy trì tính nhất quán của các nguyên tắc và quan điểm.'**
  String get wdDev5;

  /// No description provided for @wdDev6.
  ///
  /// In vi, this message translates to:
  /// **'- Tự tạo môi trường làm việc thoải mái.'**
  String get wdDev6;

  /// No description provided for @wdDev7.
  ///
  /// In vi, this message translates to:
  /// **'- Hạn chế suy nghĩ quá nhiều dễ dẫn đến mệt mỏi, kiệt sức, hoang mang.'**
  String get wdDev7;

  /// No description provided for @wdDev8.
  ///
  /// In vi, this message translates to:
  /// **'- Chia sẻ trở ngại với những người xung quanh để cùng nhau tìm giải pháp.'**
  String get wdDev8;

  /// No description provided for @wdCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân WD:'**
  String get wdCommTitle;

  /// No description provided for @wdComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Tôn trọng và chỉ nên đề cập khuyết điểm/ lỗi sai của họ ở nơi riêng tư.'**
  String get wdComm1;

  /// No description provided for @wdComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Hướng dẫn phương pháp học tập kết hợp: vừa đa dạng vừa chuyên sâu.'**
  String get wdComm2;

  /// No description provided for @wdComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Hướng dẫn và chỉ dạy cách quản lý thời gian cho chủng WD từ sớm và có mốc hoàn thành.'**
  String get wdComm3;

  /// No description provided for @wdComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Khen ngợi và có thưởng nếu chủng WD hoàn thành tốt nhiệm vụ.'**
  String get wdComm4;

  /// No description provided for @wdComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Đưa ra lựa chọn cùng lợi ích của việc cần làm thay vì đưa ra mệnh lệnh trực tiếp.'**
  String get wdComm5;

  /// No description provided for @wdComm6.
  ///
  /// In vi, this message translates to:
  /// **'- Định hướng và tập cho trẻ tự ra quyết định.'**
  String get wdComm6;

  /// No description provided for @wiTitle.
  ///
  /// In vi, this message translates to:
  /// **'Vân Đại Bàng WI'**
  String get wiTitle;

  /// No description provided for @wiChar1.
  ///
  /// In vi, this message translates to:
  /// **'- 1 tâm, 2 giao điểm – tâm dài'**
  String get wiChar1;

  /// No description provided for @wiChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể tương tác và đa dạng đối tượng, thuận lợi trong các lĩnh vực giao tiếp và quan hệ công chúng.'**
  String get wiChar2;

  /// No description provided for @wiChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Thích ứng, hội nhập nhanh với môi trường. Tìm kiếm cơ hội, thách thức nhưng chưa hết mình, do luôn có mâu thuẫn nội tại.'**
  String get wiChar3;

  /// No description provided for @wiChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Suy nghĩ theo nhiều chiều hướng, đa góc nhìn. Luôn có \"phương án B\", thực hiện nhiều phương pháp khác nhau để đạt được mục tiêu.'**
  String get wiChar4;

  /// No description provided for @wiChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Tò mò, hứng thú nhiều lĩnh vực, thích điều mới mẻ và thử thách, theo đuổi nhiều mục tiêu, nhưng vẫn có nhiều cân nhắc.'**
  String get wiChar5;

  /// No description provided for @wiChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Tiêu chuẩn cao, phân tích tỉ mỉ, hay đặt ra những câu hỏi, quan tâm đến chất lượng và sự hoàn hảo.'**
  String get wiChar6;

  /// No description provided for @wiChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Thiên hướng suy nghĩ quá nhiều dẫn đến sự mất trung, dễ bị nản lòng khi mục tiêu không như mong muốn.'**
  String get wiChar7;

  /// No description provided for @wiChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Hay do dự, lưỡng lự khi suy nghĩ ở nhiều khía cạnh khác nhau. Đưa ra những cách tiếp cận bảo thủ, khả năng kiểm soát chi tiết.'**
  String get wiChar8;

  /// No description provided for @wiChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Đề cao tinh thần hợp tác đội nhóm, thích hỏi và chia sẻ quan điểm với mọi người xung quanh.'**
  String get wiChar9;

  /// No description provided for @wiChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Nóng tính nhưng có thể kiểm soát được. Tinh thần trách nhiệm cao.'**
  String get wiChar10;

  /// No description provided for @wiChar11.
  ///
  /// In vi, this message translates to:
  /// **'- Có tinh thần trách nhiệm cao đối với công việc và gia đình.'**
  String get wiChar11;

  /// No description provided for @wiAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Là người thân thiện, nhiệt tình, thẳng thắn, có năng lực và thoải mái.'**
  String get wiAdv1;

  /// No description provided for @wiAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Dễ dàng thích nghi trong nhiều điều kiện sống khác nhau.'**
  String get wiAdv2;

  /// No description provided for @wiAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Họ có trách nhiệm với gia đình, công việc, khá kỹ lưỡng trong tình cảm và không hề sống theo bản năng mà họ điều khiển cuộc sống của mình dựa vào lý trí.'**
  String get wiAdv3;

  /// No description provided for @wiDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Ít khi làm việc đến nơi đến chốn mà hay nửa vời.'**
  String get wiDisadv1;

  /// No description provided for @wiDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Nếu buộc họ phải cùng lúc hoàn thành nhiều công việc thì hiệu quả chắc chắn sẽ không cao.'**
  String get wiDisadv2;

  /// No description provided for @wiDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Không thích những gì lặp lại.'**
  String get wiDisadv3;

  /// No description provided for @wiDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Có phần khép kín, tính tình nóng nảy, một khi họ đã bộc phát thì mọi chuyện khó có thể kiểm soát được.'**
  String get wiDisadv4;

  /// No description provided for @wiDisadv5.
  ///
  /// In vi, this message translates to:
  /// **'- Một điểm yếu khác của WI là rất hay quên.'**
  String get wiDisadv5;

  /// No description provided for @wiDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Muốn thành công cần nghiêm túc hơn trong thái độ làm việc cũng như cách sống, học cách lập kế hoạch trước khi bắt tay vào làm việc gì.'**
  String get wiDev1;

  /// No description provided for @wiDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Cởi mở hơn, sẵn sàng chia sẻ, chấp nhận phê phán để hoàn thiện bản thân hơn.'**
  String get wiDev2;

  /// No description provided for @wiDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Cần có kế hoạch phải được lập trước thật rõ ràng, cụ thể để nhìn rõ vấn đề, giá trị, mục tiêu của mỗi việc mình chọn làm.'**
  String get wiDev3;

  /// No description provided for @wiDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Vì đa mục tiêu và luôn có nhiều góc nhìn khác nhau nên WI cần học và thực hành phương pháp quản lý tốt thời gian.'**
  String get wiDev4;

  /// No description provided for @wiDev5.
  ///
  /// In vi, this message translates to:
  /// **'- WI cần ưu tiên công việc theo tầm quan trọng và độ cấp bách và thực hiện lần lượt từng việc.'**
  String get wiDev5;

  /// No description provided for @wiDev6.
  ///
  /// In vi, this message translates to:
  /// **'- WI cũng cần tăng cường kỹ năng chuyên môn để tránh việc trở thành \"thợ\" của tất cả ngành nghề mà không chuyên về nghề nào cụ thể.'**
  String get wiDev6;

  /// No description provided for @wiDev7.
  ///
  /// In vi, this message translates to:
  /// **'- WI hay suy nghĩ và hành động theo số đông, lập trường tư tưởng tùy thuộc tình thế nên cần học cách duy trì tính nhất quán của các nguyên tắc và quan điểm.'**
  String get wiDev7;

  /// No description provided for @wiDev8.
  ///
  /// In vi, this message translates to:
  /// **'- WI không thích làm những công việc nhàm chán lặp đi lặp lại nên cần tự tạo môi trường làm việc thoải mái.'**
  String get wiDev8;

  /// No description provided for @wiDev9.
  ///
  /// In vi, this message translates to:
  /// **'- WI cũng cần hạn chế suy nghĩ quá nhiều dễ dẫn đến mệt mỏi, kiệt sức, hoang mang.'**
  String get wiDev9;

  /// No description provided for @wiDev10.
  ///
  /// In vi, this message translates to:
  /// **'- WI có cái tôi cao và tính hình tượng cao nên thường ít khi chia sẻ khó khăn của bản thân với mọi người nên cần học cách chia sẻ trở ngại với những người xung quanh để cùng nhau tìm giải pháp.'**
  String get wiDev10;

  /// No description provided for @wiCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân WI:'**
  String get wiCommTitle;

  /// No description provided for @wiComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Giúp WI xác định được chính xác được mất để tránh việc lưỡng lự đắn đo trong quá trình thực hiện.'**
  String get wiComm1;

  /// No description provided for @wiComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Giao tiếp với người có chủng vân tay WI nên tập trung vào điều họ quan tâm, chân thành và tích cực để truyền cảm hứng.'**
  String get wiComm2;

  /// No description provided for @wiComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Tôn trọng và chỉ nên đề cập khuyết điểm/ lỗi sai của WI ở nơi riêng tư.'**
  String get wiComm3;

  /// No description provided for @wiComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Hướng dẫn WI phương pháp học tập kết hợp: vừa đa dạng vừa chuyên sâu.'**
  String get wiComm4;

  /// No description provided for @wiComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Hướng dẫn WI cách quản lý thời gian cho trẻ từ sớm và có mốc hoàn thành.'**
  String get wiComm5;

  /// No description provided for @wiComm6.
  ///
  /// In vi, this message translates to:
  /// **'- Khen ngợi và có thưởng nếu WI hoàn thành tốt nhiệm vụ.'**
  String get wiComm6;

  /// No description provided for @wiComm7.
  ///
  /// In vi, this message translates to:
  /// **'- Đưa ra lựa chọn cùng lợi ích của việc cần làm thay vì đưa ra mệnh lệnh trực tiếp cho WI.'**
  String get wiComm7;

  /// No description provided for @wpTitle.
  ///
  /// In vi, this message translates to:
  /// **'Vân Đại Bàng WP'**
  String get wpTitle;

  /// No description provided for @wpChar1.
  ///
  /// In vi, this message translates to:
  /// **'- Xác suất xuất hiện: 2%. Tâm tròn như mắt công, giao điểm gần nhất cách tâm ≤ 5 vân (Hoa tay).'**
  String get wpChar1;

  /// No description provided for @wpChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Cầu toàn, tiêu chuẩn cao, để ý đến từng chi tiết. Theo đuổi sự độc đáo, khác biệt và đại diện cho mẫu người theo chủ nghĩa hoàn hảo.'**
  String get wpChar2;

  /// No description provided for @wpChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Sắc sảo trong nhận thức, khéo léo trong giao tiếp, có khả năng xoay chuyển tình thế. Là một nhà lãnh đạo độc đáo, lôi cuốn.'**
  String get wpChar3;

  /// No description provided for @wpChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng thuyết phục người khác bằng niềm tin và quan điểm của mình.'**
  String get wpChar4;

  /// No description provided for @wpChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Có năng lực dự đoán, tạo ra hay khám phá ra thị trường mới.'**
  String get wpChar5;

  /// No description provided for @wpChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng tốt trong việc nhận diện hoặc tạo ra sự khác biệt, hình thành ý tưởng mới.'**
  String get wpChar6;

  /// No description provided for @wpChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Tự tin, lạc quan, chủ động và quyết liệt.'**
  String get wpChar7;

  /// No description provided for @wpChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Cạnh tranh mạnh mẽ, nỗ lực để chiến thắng và thành công. Vận dụng nhiều cách khác nhau để đạt mục tiêu.'**
  String get wpChar8;

  /// No description provided for @wpChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Quan tâm đến mọi người xung quanh, không bướng bỉnh.'**
  String get wpChar9;

  /// No description provided for @wpChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Nhạy cảm, tinh tế với cái đẹp. Thiên hướng nghệ thuật và ý thức về thẩm mỹ tốt.'**
  String get wpChar10;

  /// No description provided for @wpChar11.
  ///
  /// In vi, this message translates to:
  /// **'- Đề cao tác phong chuyên nghiệp, để ý xây dựng hình tượng cá nhân và hoàn thiện bản thân.'**
  String get wpChar11;

  /// No description provided for @wpChar12.
  ///
  /// In vi, this message translates to:
  /// **'- Kiêu hãnh, tự hào về bản thân. Quyến rũ, thu hút người đối diện.'**
  String get wpChar12;

  /// No description provided for @wpChar13.
  ///
  /// In vi, this message translates to:
  /// **'- Là người có năng lượng rất trong sạch.'**
  String get wpChar13;

  /// No description provided for @wpChar14.
  ///
  /// In vi, this message translates to:
  /// **'- Khả năng dẫn dắt và tư duy sáng tạo.'**
  String get wpChar14;

  /// No description provided for @wpAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Người sở hữu chủng vân tay WP, có nét tính cách tinh tế thiên bẩm, khả năng hoạt ngôn sắc sảo và có thiên hướng cảm thụ nghệ thuật rất tốt.'**
  String get wpAdv1;

  /// No description provided for @wpAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Người mang chủng vân tay WP có khả năng tuyệt vời trong việc quan sát các chi tiết. Từ cảm xúc, thái độ, cử chỉ tới hành động của người đối diện dù là nhỏ nhất.'**
  String get wpAdv2;

  /// No description provided for @wpAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Họ có khả năng truyền cảm hứng đến mọi người xung quanh. Có khả năng dùng quan điểm riêng của mình để thuyết phục người khác rất tốt.'**
  String get wpAdv3;

  /// No description provided for @wpAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Họ có tư duy sáng tạo và hình thành ý tưởng mới rất tốt.'**
  String get wpAdv4;

  /// No description provided for @wpAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Họ luôn nỗ lực trong công việc, có tinh thần cạnh tranh mạnh mẽ.'**
  String get wpAdv5;

  /// No description provided for @wpAdv6.
  ///
  /// In vi, this message translates to:
  /// **'- Biết vận dụng nhiều phương pháp linh hoạt khác nhau để đạt được mục tiêu đề ra.'**
  String get wpAdv6;

  /// No description provided for @wpAdv7.
  ///
  /// In vi, this message translates to:
  /// **'- Một đặc điểm nổi bật của chủng vân tay WP, đó chính là sự cầu toàn. Điều này được thể hiện một cách rõ ràng, trong sự chu đáo hoàn thành tất cả mọi việc đầy trách nhiệm. Bởi họ luôn quan tâm đến sự đánh giá của mọi người về mình.'**
  String get wpAdv7;

  /// No description provided for @wpDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Họ thường có xu hướng đặt mình ở vị trí cao hơn những người xung quanh. Trong một vài trường hợp họ thường rất tự hào về bản thân.'**
  String get wpDisadv1;

  /// No description provided for @wpDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Kỹ tính, cái gì cũng phải hoàn hảo.'**
  String get wpDisadv2;

  /// No description provided for @wpDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Nếu làm việc với người này sẽ khá áp lực.'**
  String get wpDisadv3;

  /// No description provided for @wpDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Tự cao tự đại.'**
  String get wpDisadv4;

  /// No description provided for @wpDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Lắng nghe và cảm nhận nhiều hơn, tránh việc ép buộc người khác theo tiêu chuẩn và mong đợi riêng của bản thân sẽ giúp có được mối quan hệ tốt đẹp với mọi người.'**
  String get wpDev1;

  /// No description provided for @wpDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Cần cân nhắc giữa lợi ích bản thân và lợi ích của người khác, đặt mình vào vị trí của người khác để hiểu họ hơn.'**
  String get wpDev2;

  /// No description provided for @wpDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Chú ý đến giá trị và điểm mạnh hơn là tập trung vào lỗi sai của người khác, giảm đi cách nhìn tiêu cực.'**
  String get wpDev3;

  /// No description provided for @wpDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Giữ một thái độ cởi mở để tránh những trường hợp bị cho là kiêu ngạo do vô ý.'**
  String get wpDev4;

  /// No description provided for @wpDev5.
  ///
  /// In vi, this message translates to:
  /// **'- Tham gia nhiều hoạt động cộng đồng; Cải thiện, nâng cao các kỹ năng tương tác giao tiếp.'**
  String get wpDev5;

  /// No description provided for @wpCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân WP:'**
  String get wpCommTitle;

  /// No description provided for @wpComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Khi giao tiếp với người có chủng Wp, cần ngắn gọn, tập trung vào vấn đề chính.'**
  String get wpComm1;

  /// No description provided for @wpComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Tôn trọng họ trong việc giao tiếp và ra quyết định, chỉ nên đề cập khuyết điểm/ lỗi sai của họ ở nơi riêng tư.'**
  String get wpComm2;

  /// No description provided for @wpComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Giao tiếp khéo léo ví dụ ( khi một người bạn hỏi WP về chiếc váy mà họ đang mặc xem có đẹp không, mặc dù chiếc váy đó không được đẹp cho lắm, nhưng WP vẫn khen một cách khéo léo là chiếc váy đó nhìn khá sang trọng).'**
  String get wpComm3;

  /// No description provided for @wpComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Khen ngợi và thưởng nếu bản thân hoàn thành tốt nhiệm vụ.'**
  String get wpComm4;

  /// No description provided for @wpComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Đưa ra lựa chọn cùng lợi ích của việc cần làm thay vì đưa ra mệnh lệnh trực tiếp.'**
  String get wpComm5;

  /// No description provided for @wpComm6.
  ///
  /// In vi, this message translates to:
  /// **'- Để bản thân tự quyết định những việc nằm trong khả năng của mình thay vì nhờ người khác quyết định hộ hoặc làm giúp.'**
  String get wpComm6;

  /// No description provided for @wxTitle.
  ///
  /// In vi, this message translates to:
  /// **'Vân Đại Bàng WX'**
  String get wxTitle;

  /// No description provided for @wxChar1.
  ///
  /// In vi, this message translates to:
  /// **'- Có nhiều đặc điểm tính cách và thay đổi thất thường, không thể đoán biết được. Có rất nhiều ý tưởng kỳ lạ và khác biệt.'**
  String get wxChar1;

  /// No description provided for @wxChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Có xu hướng hay thay đổi và không ổn định, năng lượng phân tán khắp mọi nơi.'**
  String get wxChar2;

  /// No description provided for @wxChar3.
  ///
  /// In vi, this message translates to:
  /// **'- \"Suy nghĩ ngoài chiếc hộp\", có tính cá nhân hóa.'**
  String get wxChar3;

  /// No description provided for @wxChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Theo đuổi những điều độc đáo và khác biệt từ những người khác.'**
  String get wxChar4;

  /// No description provided for @wxChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Thích những điều mới mẻ và huyền bí.'**
  String get wxChar5;

  /// No description provided for @wxChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Ham muốn tự do, mong muốn phá vỡ những điều thuộc về truyền thống.'**
  String get wxChar6;

  /// No description provided for @wxChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Có tính kháng cự, không bao giờ chấp nhận những điều mà họ không mong đợi.'**
  String get wxChar7;

  /// No description provided for @wxChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Họ không bao giờ tự giới hạn chính bản thân mình, có những ý nghĩ mang tính đối kháng.'**
  String get wxChar8;

  /// No description provided for @wxChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Không thể chấp nhận cuộc sống đơn giản và buồn tẻ, thích những thứ mới mẻ và thử thách, những điều đa dạng và bí ẩn.'**
  String get wxChar9;

  /// No description provided for @wxAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Là những người có \"Suy nghĩ ngoài chiếc hộp\", theo đuổi những điều độc đáo và khác biệt từ những người khác.'**
  String get wxAdv1;

  /// No description provided for @wxAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Thích những điều mới mẻ và huyền bí.'**
  String get wxAdv2;

  /// No description provided for @wxDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Lối suy nghĩ độc đáo, sáng tạo đôi lúc có phần \"điên\" khiến họ khó hòa đồng và thường bị xa lánh.'**
  String get wxDisadv1;

  /// No description provided for @wxDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Với tính cách bốc đồng, WX rất dễ bị kích động (về mặt cảm xúc), và khó kiểm soát cảm xúc của bản thân.'**
  String get wxDisadv2;

  /// No description provided for @wxDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- WX cũng là nhóm người khó có thể áp đặt bởi họ luôn thích sống và làm việc theo ý muốn riêng của bản thân.'**
  String get wxDisadv3;

  /// No description provided for @wxDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Bốc đồng, dễ kích động (về mặt cảm xúc).'**
  String get wxDisadv4;

  /// No description provided for @wxDev1.
  ///
  /// In vi, this message translates to:
  /// **'- WX cần chấp nhận nét độc đáo và khác biệt của mình.'**
  String get wxDev1;

  /// No description provided for @wxDev2.
  ///
  /// In vi, this message translates to:
  /// **'- WX cần luôn để cho tinh thần thoải mái, có không gian và thời gian riêng để theo đuổi những sở thích cá nhân và tự phát triển bản thân.'**
  String get wxDev2;

  /// No description provided for @wxDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Muốn thành công WX cần học thói quen lập kế hoạch làm việc rõ ràng, chi tiết, tập trung vào mục tiêu và giám sát tiến độ thực hiện.'**
  String get wxDev3;

  /// No description provided for @wxDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Cảm xúc là kẻ thù của thành công nên WX cần học cách kiểm soát cảm xúc, nên lắng nghe ý kiến của người khác, cân nhắc kỹ trước khi ra quyết định.'**
  String get wxDev4;

  /// No description provided for @wxDev5.
  ///
  /// In vi, this message translates to:
  /// **'- WX cũng nên thường xuyên tự phản ánh bản thân để tránh trở nên tự huyễn hoặc (hoặc trở nên kiêu ngạo).'**
  String get wxDev5;

  /// No description provided for @wxCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân WX:'**
  String get wxCommTitle;

  /// No description provided for @wxComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Khi giao tiếp với WX Cần chân thành, nhẹ nhàng. Thể hiện sự quan tâm và tôn trọng, không ngắt lời họ.'**
  String get wxComm1;

  /// No description provided for @wxComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Tránh ra lệnh trực tiếp hoặc ép buộc WX vì sẽ ảnh hưởng ngược đến cách họ hành động.'**
  String get wxComm2;

  /// No description provided for @wxComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Chấp nhận sự độc đáo, sáng tạo của WX hơn là áp đặt họ trở thành ai đó.'**
  String get wxComm3;

  /// No description provided for @wxComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Khuyến khích hỏi và kiên nhẫn giúp trẻ tìm ra giải pháp hoặc câu trả lời.'**
  String get wxComm4;

  /// No description provided for @wxComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Sử dụng thẻ điểm cho việc đạt mục tiêu như là sự khuyến khích.'**
  String get wxComm5;

  /// No description provided for @wxComm6.
  ///
  /// In vi, this message translates to:
  /// **'- Tạo ra nhiều thử thách nhỏ cho bản thân từ sớm để cá nhân trải nghiệm trong môi trường an toàn.'**
  String get wxComm6;

  /// No description provided for @aeTitle.
  ///
  /// In vi, this message translates to:
  /// **' Vân Núi Ae'**
  String get aeTitle;

  /// No description provided for @aeChar1.
  ///
  /// In vi, this message translates to:
  /// **'- Sự kết hợp giữa nhóm Đại bàng với Núi, khoảng cách tâm đến giao điểm của đại bàng nhỏ hơn 5 đường vân.'**
  String get aeChar1;

  /// No description provided for @aeChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Có 1 tâm tròn ở giữa.'**
  String get aeChar2;

  /// No description provided for @aeChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Là một người nhạy cảm, có mục tiêu rõ ràng, luôn sẵn sằng cố gắng để đạt mục tiêu.'**
  String get aeChar3;

  /// No description provided for @aeChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Giỏi với con số, phù hợp với các việc cần tính toán, đầu tư tài chính.'**
  String get aeChar4;

  /// No description provided for @aeChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Là người cẩn trọng, luôn chú ý tới các chi tiết trong quá trình làm việc, luôn đánh giá cao tiến trình công việc.'**
  String get aeChar5;

  /// No description provided for @aeChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Thông minh, khả năng hấp thu kiến thức cũng rất lớn như các đặc tính vân khác của chủng vân núi.'**
  String get aeChar6;

  /// No description provided for @aeAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Có mục tiêu rõ ràng, luôn sẵn sằng cố gắng để đạt mục tiêu.'**
  String get aeAdv1;

  /// No description provided for @aeAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Cẩn trọng.'**
  String get aeAdv2;

  /// No description provided for @aeAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Thông minh, khả năng hấp thu kiến thức cũng rất lớn.'**
  String get aeAdv3;

  /// No description provided for @aeDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Nhạy cảm.'**
  String get aeDisadv1;

  /// No description provided for @aeDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Nên phát triển sự nghiệp liên quan đén tính toàn, đầu tư tài chính'**
  String get aeDev1;

  /// No description provided for @arTitle.
  ///
  /// In vi, this message translates to:
  /// **' Vân Núi AR'**
  String get arTitle;

  /// No description provided for @arChar1.
  ///
  /// In vi, this message translates to:
  /// **'- 1 tâm, 2 giao điểm – tâm là vòng tròn hở hướng về ngón út.'**
  String get arChar1;

  /// No description provided for @arChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể nói chủng AR gần giống với chủng vân tay LU. Các đặc tính tương tự nhưng sẽ phần nào đó rõ nét, nổi trội hơn. Bình tĩnh nhưng đồng thời cũng có phần nhạy cảm.'**
  String get arChar2;

  /// No description provided for @arChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Hòa đồng, cởi mở, thân thiện nhưng ít chủ động tạo mối quan hệ. Nhạy cảm trong giao tiếp, thích quan sát.'**
  String get arChar3;

  /// No description provided for @arChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Nhiệt tình, chân thành và dễ cảm thông cho vấn đề của người khác. Rất coi trọng các mối quan hệ.'**
  String get arChar4;

  /// No description provided for @arChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Biết lắng nghe và chấp nhận ý kiến của người khác.'**
  String get arChar5;

  /// No description provided for @arChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Chu đáo, biết quan tâm mọi người, sống tình cảm, thích tự do.'**
  String get arChar6;

  /// No description provided for @arChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Là một người dễ bị người khác ảnh hưởng.'**
  String get arChar7;

  /// No description provided for @arChar8.
  ///
  /// In vi, this message translates to:
  /// **'- AR có thể nói là phiên bản mạnh hơn của LU, có sự khác biệt đó là có mục tiêu rõ ràng hơn những vẫn dễ bị thay đổi.'**
  String get arChar8;

  /// No description provided for @arChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Tập trung, có mục tiêu.'**
  String get arChar9;

  /// No description provided for @arChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Thông minh, nhạy bén và có khả năng tiếp thu kiến thức rất cao, có khả năng tiếp thu kiến thức trong khoảng thời gian ngắn.'**
  String get arChar10;

  /// No description provided for @arAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Có mục tiêu rõ ràng, sẵn sàng đạt mục tiêu.'**
  String get arAdv1;

  /// No description provided for @arAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Nhạy cảm, cẩn trọng.'**
  String get arAdv2;

  /// No description provided for @arAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Thông minh, khả năng hấp thu kiến thức cũng rất lớn.'**
  String get arAdv3;

  /// No description provided for @arAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng tập trung cao trong khoảng thời gian ngắn.'**
  String get arAdv4;

  /// No description provided for @arAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Khả năng bắt chước vượt trội, học nhanh trong môi trường và trong xã hội.'**
  String get arAdv5;

  /// No description provided for @arAdv6.
  ///
  /// In vi, this message translates to:
  /// **'- Mềm mại, nhẹ nhàng và cởi mở; lãng mạn, thích tự do và chỉ sống cho hiện tại.'**
  String get arAdv6;

  /// No description provided for @arAdv7.
  ///
  /// In vi, this message translates to:
  /// **'- Suy nghĩ linh hoạt và tương thích.'**
  String get arAdv7;

  /// No description provided for @arDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Nhạy cảm.'**
  String get arDisadv1;

  /// No description provided for @arDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Mục tiêu vẫn dễ bị thay đổi.'**
  String get arDisadv2;

  /// No description provided for @arDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Dễ bị tác động bởi những người xung quanh và môi trường.'**
  String get arDisadv3;

  /// No description provided for @arDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Làm việc theo cảm tính, dễ thay đổi nguyên tắc và kế hoạch đã vạch ra. Vì vậy nên lập kế hoạch làm việc rõ ràng, chi tiết, tập trung vào mục tiêu và giám sát tiến độ thực hiện. Tham gia các khóa học về ra quyết định và lập mục tiêu.'**
  String get arDev1;

  /// No description provided for @arDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Học để trở thành người hướng dẫn và chịu trách nhiệm với quy trình làm việc, đưa ra giải pháp cho vấn đề phát sinh.'**
  String get arDev2;

  /// No description provided for @arDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Công việc, kế hoạch có thể bị trì hoãn vì lối sống tình cảm. Chọn một người tri kỷ đáng tin cậy để động viên và khích lệ, đôn đốc việc thực hiện mục tiêu.'**
  String get arDev3;

  /// No description provided for @arDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Chủ động giao tiếp. Tham gia các hoạt động cộng đồng khác nhau, chủ động nhận vị trí lãnh đạo, xây dựng sự tự tin. Tham khảo tự truyện của những người thành công.'**
  String get arDev4;

  /// No description provided for @arDev5.
  ///
  /// In vi, this message translates to:
  /// **'- Học cách nói \"không\" với người khác một cách thích hợp khi cần thiết.'**
  String get arDev5;

  /// No description provided for @arCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân AR:'**
  String get arCommTitle;

  /// No description provided for @arComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Khi giao tiếp với mẫu người này, cần chân thành, nhẹ nhàng để tạo sự tin tưởng, giúp cuộc nói chuyện cởi mở và hiệu quả hơn.'**
  String get arComm1;

  /// No description provided for @arComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Thể hiện sự quan tâm, dành thời gian để hỏi và trả lời, khen ngợi, động viên.'**
  String get arComm2;

  /// No description provided for @arComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Cần làm mẫu cụ thể để dễ dàng bắt nhịp trang học tập.'**
  String get arComm3;

  /// No description provided for @arComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Cần theo dõi, thường xuyên khuyến khích và động viên trẻ kịp thời để truyền sự tự tin, tránh việc bỏ dở nửa chừng theo tâm trạng.'**
  String get arComm4;

  /// No description provided for @arComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Cần cung cấp cho trẻ mục tiêu rõ ràng, dễ nhìn dễ thấy, mục tiêu ngắn hạn trước.'**
  String get arComm5;

  /// No description provided for @arComm6.
  ///
  /// In vi, this message translates to:
  /// **'- Tạo một môi trường kỷ luật nghiêm ngặt.'**
  String get arComm6;

  /// No description provided for @arComm7.
  ///
  /// In vi, this message translates to:
  /// **'- Dùng phương pháp tương tác khi hướng dẫn: thảo luận, để người khác đưa ra câu hỏi và mình trả lời.'**
  String get arComm7;

  /// No description provided for @asTitle.
  ///
  /// In vi, this message translates to:
  /// **' Vân Núi AS'**
  String get asTitle;

  /// No description provided for @asChar1.
  ///
  /// In vi, this message translates to:
  /// **'- 1 tâm, 2 giao điểm – tâm là vòng xoáy xoắn ốc. Hướng của vân quay ngược chiều kim đồng hồ. Góc hợp bởi 2 giao điểm lớn hơn 90 độ.'**
  String get asChar1;

  /// No description provided for @asChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Suy nghĩ rất nhanh, có những quyết định tức thì. Là chủng rất thông minh.'**
  String get asChar2;

  /// No description provided for @asChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Có lập trường, bảo vệ quan điểm của bản thân.'**
  String get asChar3;

  /// No description provided for @asChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Rất kiên định, kiên trì và bền bỉ.'**
  String get asChar4;

  /// No description provided for @asChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Tập trung, có mục tiêu.'**
  String get asChar5;

  /// No description provided for @asChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể gây áp lực, bắt buộc người khác phải theo mình.'**
  String get asChar6;

  /// No description provided for @asChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Không có nhu cầu xã giao, giao tiếp theo phong cách cá nhân.'**
  String get asChar7;

  /// No description provided for @asChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Sống nội tâm, khó chia sẻ, khó tiếp cận.'**
  String get asChar8;

  /// No description provided for @asChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Thông minh, khả năng hấp thu kiến thức rất lớn. Khả năng tiếp thu trong khoảng thời gian ngắn.'**
  String get asChar9;

  /// No description provided for @asAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Có lập trường.'**
  String get asAdv1;

  /// No description provided for @asAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Bảo vệ quan điểm.'**
  String get asAdv2;

  /// No description provided for @asAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Rất kiên định, kiên trì và bền bỉ.'**
  String get asAdv3;

  /// No description provided for @asAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Tập trung, có mục tiêu.'**
  String get asAdv4;

  /// No description provided for @asAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Thông minh, khả năng hấp thu kiến thức rất lớn.'**
  String get asAdv5;

  /// No description provided for @asDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể gây áp lực, bắt buộc người khác phải theo mình.'**
  String get asDisadv1;

  /// No description provided for @asDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Không có nhu cầu xã giao.'**
  String get asDisadv2;

  /// No description provided for @asDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Sống nội tâm, khó chia sẻ, khó tiếp cận.'**
  String get asDisadv3;

  /// No description provided for @asDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Tránh đưa ra kết luận vội vàng.'**
  String get asDev1;

  /// No description provided for @asDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Khi không có mục tiêu dễ dẫn đến chán nản mất phương hướng, vì vậy hãy xây dựng mục tiêu rõ ràng và duy trì thực hiện.'**
  String get asDev2;

  /// No description provided for @asDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Cần chú ý để cân bằng giữa đưa ra yêu cầu và lắng nghe ý kiến của người khác.'**
  String get asDev3;

  /// No description provided for @asDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể gây áp lực, bắt buộc người khác phải theo mình. Học cách tôn trọng ý kiến và tạo điều kiện cho các thành viên đóng góp ý tưởng.'**
  String get asDev4;

  /// No description provided for @asCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân AS:'**
  String get asCommTitle;

  /// No description provided for @asComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Cần trực tiếp, ngắn gọn vào vấn đề mà không cần đề cập đến các chi tiết không liên quan.'**
  String get asComm1;

  /// No description provided for @asComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Tránh ra lệnh, ép buộc mà cần trao đổi, đề nghị, giải thích. Nên nhẹ nhàng vì họ có tự trọng cao.'**
  String get asComm2;

  /// No description provided for @asComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Nên có những câu hỏi dẫn dắt để khơi gợi câu trả lời của trẻ, tập cho trẻ chia sẻ dễ dàng hơn.'**
  String get asComm3;

  /// No description provided for @asComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Khi kết quả thực hiện thấp, chỉ ngay chỗ sai, đưa ra cách tiếp cận đúng và sửa đổi ngay lập tức.'**
  String get asComm4;

  /// No description provided for @asComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Bạn bè/người thân chỉ nên đưa ra lời hứa khi có thể thực hiện được.'**
  String get asComm5;

  /// No description provided for @atTitle.
  ///
  /// In vi, this message translates to:
  /// **' Vân Núi AT'**
  String get atTitle;

  /// No description provided for @atChar1.
  ///
  /// In vi, this message translates to:
  /// **'- 1 tâm, 2 giao điểm – hướng xoáy thuận chiều kim đồng hồ.'**
  String get atChar1;

  /// No description provided for @atChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Các đặc tính khá giống so với AS (Vân Núi AS).'**
  String get atChar2;

  /// No description provided for @atChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Suy nghĩ rất nhanh, có những quyết định tức thì. Là chủng rất thông minh.'**
  String get atChar3;

  /// No description provided for @atChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Có lập trường, bảo vệ quan điểm của bản thân.'**
  String get atChar4;

  /// No description provided for @atChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Rất kiên định, kiên trì và bền bỉ.'**
  String get atChar5;

  /// No description provided for @atChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Tập trung, có mục tiêu.'**
  String get atChar6;

  /// No description provided for @atChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể gây áp lực, bắt buộc người khác phải theo mình.'**
  String get atChar7;

  /// No description provided for @atChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Không có nhu cầu xã giao, giao tiếp theo phong cách cá nhân.'**
  String get atChar8;

  /// No description provided for @atChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Sống nội tâm, khó chia sẻ, khó tiếp cận.'**
  String get atChar9;

  /// No description provided for @atChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Thông minh, khả năng hấp thu kiến thức rất lớn. Khả năng tiếp thu trong khoảng thời gian ngắn.'**
  String get atChar10;

  /// No description provided for @atAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Có lập trường.'**
  String get atAdv1;

  /// No description provided for @atAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Bảo vệ quan điểm.'**
  String get atAdv2;

  /// No description provided for @atAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Rất kiên định, kiên trì và bền bỉ.'**
  String get atAdv3;

  /// No description provided for @atAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Tập trung, có mục tiêu.'**
  String get atAdv4;

  /// No description provided for @atAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Thông minh, khả năng hấp thu kiến thức rất lớn.'**
  String get atAdv5;

  /// No description provided for @atDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể gây áp lực, bắt buộc người khác phải theo mình.'**
  String get atDisadv1;

  /// No description provided for @atDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Không có nhu cầu xã giao.'**
  String get atDisadv2;

  /// No description provided for @atDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Sống nội tâm, khó chia sẻ, khó tiếp cận.'**
  String get atDisadv3;

  /// No description provided for @atDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Tránh đưa ra kết luận vội vàng.'**
  String get atDev1;

  /// No description provided for @atDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Khi không có mục tiêu dễ dẫn đến chán nản mất phương hướng, vì vậy hãy xây dựng mục tiêu rõ ràng và duy trì thực hiện.'**
  String get atDev2;

  /// No description provided for @atDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Cần chú ý để cân bằng giữa đưa ra yêu cầu và lắng nghe ý kiến của người khác.'**
  String get atDev3;

  /// No description provided for @atDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể gây áp lực, bắt buộc người khác phải theo mình. Học cách tôn trọng ý kiến và tạo điều kiện cho các thành viên đóng góp ý tưởng.'**
  String get atDev4;

  /// No description provided for @atCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân AT:'**
  String get atCommTitle;

  /// No description provided for @atComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Cần trực tiếp, ngắn gọn vào vấn đề mà không cần đề cập đến các chi tiết không liên quan.'**
  String get atComm1;

  /// No description provided for @atComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Tránh ra lệnh, ép buộc mà cần trao đổi, đề nghị, giải thích. Nên nhẹ nhàng vì họ có tự trọng cao.'**
  String get atComm2;

  /// No description provided for @atComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Nên có những câu hỏi dẫn dắt để khơi gợi câu trả lời của trẻ, tập cho trẻ chia sẻ dễ dàng hơn.'**
  String get atComm3;

  /// No description provided for @atComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Khi kết quả thực hiện thấp, chỉ ngay chỗ sai, đưa ra cách tiếp cận đúng và sửa đổi ngay lập tức.'**
  String get atComm4;

  /// No description provided for @atComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Bạn bè/người thân chỉ nên đưa ra lời hứa khi có thể thực hiện được.'**
  String get atComm5;

  /// No description provided for @auTitle.
  ///
  /// In vi, this message translates to:
  /// **' Vân Núi AU'**
  String get auTitle;

  /// No description provided for @auChar1.
  ///
  /// In vi, this message translates to:
  /// **'- 1 tâm, 2 giao điểm – tâm là vòng tròn kín hướng lên trên.'**
  String get auChar1;

  /// No description provided for @auChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Suy nghĩ rất nhanh, có những quyết định tức thì. Là chủng rất thông minh.'**
  String get auChar2;

  /// No description provided for @auChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Có lập trường, bảo vệ quan điểm của bản thân.'**
  String get auChar3;

  /// No description provided for @auChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Rất kiên định, kiên trì và bền bỉ.'**
  String get auChar4;

  /// No description provided for @auChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Tập trung, có mục tiêu.'**
  String get auChar5;

  /// No description provided for @auChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể gây áp lực, bắt buộc người khác phải theo mình.'**
  String get auChar6;

  /// No description provided for @auChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Không có nhu cầu xã giao, giao tiếp theo phong cách cá nhân.'**
  String get auChar7;

  /// No description provided for @auChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Sống nội tâm, khó chia sẻ, khó tiếp cận.'**
  String get auChar8;

  /// No description provided for @auChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Thông minh, khả năng hấp thu kiến thức rất lớn. Khả năng tiếp thu trong khoảng thời gian ngắn.'**
  String get auChar9;

  /// No description provided for @auChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Là người nghiêm túc, kiên định, tập trung và sẽ quyết tâm hoàn thành nhiệm vụ khi trao cho họ trách nhiệm.'**
  String get auChar10;

  /// No description provided for @auChar11.
  ///
  /// In vi, this message translates to:
  /// **'- Cảm xúc ở mức độ cực đoan: Ghét sẽ ghét tới cùng, thương sẽ thương tới cùng.'**
  String get auChar11;

  /// No description provided for @auAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Có lập trường.'**
  String get auAdv1;

  /// No description provided for @auAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Bảo vệ quan điểm.'**
  String get auAdv2;

  /// No description provided for @auAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Rất kiên định, kiên trì và bền bỉ.'**
  String get auAdv3;

  /// No description provided for @auAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Tập trung, có mục tiêu.'**
  String get auAdv4;

  /// No description provided for @auAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Thông minh, khả năng hấp thu kiến thức rất lớn.'**
  String get auAdv5;

  /// No description provided for @auDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể gây áp lực, bắt buộc người khác phải theo mình.'**
  String get auDisadv1;

  /// No description provided for @auDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Không có nhu cầu xã giao.'**
  String get auDisadv2;

  /// No description provided for @auDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Sống nội tâm, khó chia sẻ, khó tiếp cận.'**
  String get auDisadv3;

  /// No description provided for @auDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Cảm xúc cực đoan.'**
  String get auDisadv4;

  /// No description provided for @auDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Tránh đưa ra kết luận vội vàng.'**
  String get auDev1;

  /// No description provided for @auDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Khi không có mục tiêu dễ dẫn đến chán nản mất phương hướng, vì vậy hãy xây dựng mục tiêu rõ ràng và duy trì thực hiện.'**
  String get auDev2;

  /// No description provided for @auDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Cần chú ý để cân bằng giữa đưa ra yêu cầu và lắng nghe ý kiến của người khác.'**
  String get auDev3;

  /// No description provided for @auDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Có thể gây áp lực, bắt buộc người khác phải theo mình. Học cách tôn trọng ý kiến và tạo điều kiện cho các thành viên đóng góp ý tưởng.'**
  String get auDev4;

  /// No description provided for @auCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân AU:'**
  String get auCommTitle;

  /// No description provided for @auComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Cần trực tiếp, ngắn gọn vào vấn đề mà không cần đề cập đến các chi tiết không liên quan.'**
  String get auComm1;

  /// No description provided for @auComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Tránh ra lệnh, ép buộc mà cần trao đổi, đề nghị, giải thích. Nên nhẹ nhàng vì họ có tự trọng cao.'**
  String get auComm2;

  /// No description provided for @auComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Nên có những câu hỏi dẫn dắt để khơi gợi câu trả lời của trẻ, tập cho trẻ chia sẻ dễ dàng hơn.'**
  String get auComm3;

  /// No description provided for @auComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Khi kết quả thực hiện thấp, chỉ ngay chỗ sai, đưa ra cách tiếp cận đúng và sửa đổi ngay lập tức.'**
  String get auComm4;

  /// No description provided for @auComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Tránh gây áp lực nếu không sẽ có những phản ứng cảm xúc bùng nổ tức thì.'**
  String get auComm5;

  /// No description provided for @auComm6.
  ///
  /// In vi, this message translates to:
  /// **'- Người có chủng vân tay AU khó để tiếp xúc. Nhưng khi đã có sự gắn kết nhất định thì AU – AR có khả năng duy trì mối quan hệ lâu bền, gắn kết.'**
  String get auComm6;

  /// No description provided for @lfTitle.
  ///
  /// In vi, this message translates to:
  /// **' Vân Nước LF'**
  String get lfTitle;

  /// No description provided for @lfChar1.
  ///
  /// In vi, this message translates to:
  /// **'- Các đặc tính khá giống với chủng LU.'**
  String get lfChar1;

  /// No description provided for @lfChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Khả năng hiểu nhanh một sự việc chỉ trong thời gian ngắn và thường hiểu rất sâu, khác biệt so với người bình thường.'**
  String get lfChar2;

  /// No description provided for @lfChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Có sự đa dạng và phong phú trong tính cách.'**
  String get lfChar3;

  /// No description provided for @lfChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Hòa đồng, cởi mở, thân thiện nhưng ít chủ động tạo mối quan hệ. Nhạy cảm trong giao tiếp, thích quan sát.'**
  String get lfChar4;

  /// No description provided for @lfChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Không thích xung đột mâu thuẫn, đề cao tinh thần đồng đội, yêu thích hoạt động đội nhóm.'**
  String get lfChar5;

  /// No description provided for @lfChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Là thành viên tốt trong đội nhóm, người chấp hành tốt, khả năng chịu đựng cao.'**
  String get lfChar6;

  /// No description provided for @lfChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Thích nghi tốt, dễ hòa nhập với từng môi trường. Có tư duy linh hoạt và khả năng tương thích cao.'**
  String get lfChar7;

  /// No description provided for @lfChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Nhiệt tình, chân thành và dễ cảm thông cho vấn đề của người khác. Rất coi trọng các mối quan hệ.'**
  String get lfChar8;

  /// No description provided for @lfChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Biết lắng nghe và chấp nhận ý kiến của người khác.'**
  String get lfChar9;

  /// No description provided for @lfChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Cư xử theo cách mọi người mong đợi, bằng cách nào đó chiều ý những người khác.'**
  String get lfChar10;

  /// No description provided for @lfChar11.
  ///
  /// In vi, this message translates to:
  /// **'- Chu đáo, biết quan tâm mọi người, sống tình cảm, thích tự do.'**
  String get lfChar11;

  /// No description provided for @lfChar12.
  ///
  /// In vi, this message translates to:
  /// **'- Không giỏi sáng tạo, tuy nhiên học hỏi rất nhanh từ môi trường và xã hội, dễ bắt chước và mô phỏng tốt.'**
  String get lfChar12;

  /// No description provided for @lfChar13.
  ///
  /// In vi, this message translates to:
  /// **'- Là một người dễ bị người khác ảnh hưởng.'**
  String get lfChar13;

  /// No description provided for @lfChar14.
  ///
  /// In vi, this message translates to:
  /// **'- Kỷ luật tự giác bản thân thấp.'**
  String get lfChar14;

  /// No description provided for @lfChar15.
  ///
  /// In vi, this message translates to:
  /// **'- Là người của xã hội, cộng đồng. Là một chủng khá phổ biến. Người mang chủng nay khá hiền và lành tính, dễ bị người khác chèn ép.'**
  String get lfChar15;

  /// No description provided for @lfChar16.
  ///
  /// In vi, this message translates to:
  /// **'- Lãng mạn, thích sự tự do.'**
  String get lfChar16;

  /// No description provided for @lfChar17.
  ///
  /// In vi, this message translates to:
  /// **'- Họ làm việc theo cảm tính và dễ thay đổi mục tiêu của mình.'**
  String get lfChar17;

  /// No description provided for @lfAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Khả năng bắt chước vượt trội, học nhanh trong môi trường và trong xã hội.'**
  String get lfAdv1;

  /// No description provided for @lfAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Mềm mại, nhẹ nhàng và cởi mở; lãng mạn, thích tự do và chỉ sống cho hiện tại.'**
  String get lfAdv2;

  /// No description provided for @lfAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Hướng tới sự hòa hợp và hòa bình, không thích sự mâu thuẫn, gay gắt hay xung đột.'**
  String get lfAdv3;

  /// No description provided for @lfAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Thuộc mẫu người cộng đồng xã hội thích những nơi đông người, thích nghi trước rồi mới giao tiếp, thích tham gia các hoạt động vì cộng đồng.'**
  String get lfAdv4;

  /// No description provided for @lfAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Cảm xúc, làm theo cảm xúc. Thường quan tâm tới những người xung quanh, dễ cảm thông cho vấn đề của người khác.'**
  String get lfAdv5;

  /// No description provided for @lfAdv6.
  ///
  /// In vi, this message translates to:
  /// **'- Suy nghĩ linh hoạt và tương thích, dễ bắt chước hoặc tái tạo ý tưởng của người khác thành ý tưởng của mình.'**
  String get lfAdv6;

  /// No description provided for @lfDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Không có mục tiêu rõ ràng trong tâm trí, tham vọng không lớn.'**
  String get lfDisadv1;

  /// No description provided for @lfDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Không có chính kiến, dễ bị tác động bởi những người xung quanh và môi trường.'**
  String get lfDisadv2;

  /// No description provided for @lfDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Hay lo chuyện bao đồng.'**
  String get lfDisadv3;

  /// No description provided for @lfDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Thụ động, dễ bị áp đặt.'**
  String get lfDisadv4;

  /// No description provided for @lfDisadv5.
  ///
  /// In vi, this message translates to:
  /// **'- Làm việc theo cảm tính, dễ thay đổi nguyên tắc và kế hoạch đã vạch ra.'**
  String get lfDisadv5;

  /// No description provided for @lfDisadv6.
  ///
  /// In vi, this message translates to:
  /// **'- Công việc, kế hoạch có thể bị trì hoãn vì lối sống tình cảm.'**
  String get lfDisadv6;

  /// No description provided for @lfDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Làm việc theo cảm tính, dễ thay đổi nguyên tắc và kế hoạch đã vạch ra. Vì vậy nên lập kế hoạch làm việc rõ ràng, chi tiết, tập trung vào mục tiêu và giám sát tiến độ thực hiện. Tham gia các khóa học về ra quyết định và lập mục tiêu.'**
  String get lfDev1;

  /// No description provided for @lfDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Học để trở thành người hướng dẫn và chịu trách nhiệm với quy trình làm việc, đưa ra giải pháp cho vấn đề phát sinh.'**
  String get lfDev2;

  /// No description provided for @lfDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Công việc, kế hoạch có thể bị trì hoãn vì lối sống tình cảm. Chọn một người tri kỷ đáng tin cậy để động viên và khích lệ, đôn đốc việc thực hiện mục tiêu.'**
  String get lfDev3;

  /// No description provided for @lfDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Chủ động giao tiếp. Tham gia các hoạt động cộng đồng khác nhau, chủ động nhận vị trí lãnh đạo, xây dựng sự tự tin. Tham khảo tự truyện của những người thành công.'**
  String get lfDev4;

  /// No description provided for @lfDev5.
  ///
  /// In vi, this message translates to:
  /// **'- Học cách nói \"không\" với người khác một cách thích hợp khi cần thiết.'**
  String get lfDev5;

  /// No description provided for @lfDev6.
  ///
  /// In vi, this message translates to:
  /// **'- Nước phải tìm cho mình NGƯỜI THẦY: Người Thầy sẽ như vật chứa, có thể định hình giúp NƯỚC. Là người định hướng, chỉ bảo, thúc đẩy, động viên để nước có thể dễ dàng hơn về hướng đi trong cuộc đời mình. Hãy tìm cho mình người Thầy về phát triển bản thân, người thầy về phát triển chuyên môn, phát triển kinh doanh, … .'**
  String get lfDev6;

  /// No description provided for @lfDev7.
  ///
  /// In vi, this message translates to:
  /// **'- Nước cần phải có MÔI TRƯỜNG TỐT.Nước dễ thích nghi với môi trường. Dễ hòa nhập với môi trường và khả năng sao chép tốt. Chính vì điều đó Nước ở bên cạnh ai, trong môi trường như thế nào nước sẽ dễ dàng trở thành những người tương tự như thế.'**
  String get lfDev7;

  /// No description provided for @lfDev8.
  ///
  /// In vi, this message translates to:
  /// **'- Nước cần HÌNH TƯỢNG. Nước giỏi sao chép, chính vì vậy nước hãy tìm ra những thần tượng cho mình. Nghiên cứu, tìm hiểu, học hỏi từ họ để tìm ra những triết lý sống, cách thức mà họ đã thành công. Từ đó nước áp dụng bằng khả năng sao chép của chính mình.'**
  String get lfDev8;

  /// No description provided for @lfDev9.
  ///
  /// In vi, this message translates to:
  /// **'- Chọn bạn mà chơi, chọn nơi mà ở, chọn thầy mà học.'**
  String get lfDev9;

  /// No description provided for @lfCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân LF:'**
  String get lfCommTitle;

  /// No description provided for @lfComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Khi giao tiếp với mẫu người này, cần chân thành, nhẹ nhàng để tạo sự tin tưởng, giúp cuộc nói chuyện cởi mở và hiệu quả hơn.'**
  String get lfComm1;

  /// No description provided for @lfComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Thể hiện sự quan tâm, dành thời gian để hỏi và trả lời, khen ngợi, động viên.'**
  String get lfComm2;

  /// No description provided for @lfComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Cần làm mẫu cụ thể để dễ dàng bắt nhịp trang học tập.'**
  String get lfComm3;

  /// No description provided for @lfComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Cần theo dõi, thường xuyên khuyến khích và động viên trẻ kịp thời để truyền sự tự tin, tránh việc bỏ dở nửa chừng theo tâm trạng.'**
  String get lfComm4;

  /// No description provided for @lfComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Tạo một môi trường kỷ luật nghiêm ngặt.'**
  String get lfComm5;

  /// No description provided for @lfComm6.
  ///
  /// In vi, this message translates to:
  /// **'- Dùng phương pháp tương tác khi hướng dẫn: thảo luận, để người khác đưa ra câu hỏi và mình trả lời.'**
  String get lfComm6;

  /// No description provided for @lrTitle.
  ///
  /// In vi, this message translates to:
  /// **' Vân Nước LR'**
  String get lrTitle;

  /// No description provided for @lrChar1.
  ///
  /// In vi, this message translates to:
  /// **'- Xác suất xuất hiện: 5%. Hình dạng như dòng nước chảy xuôi về phía ngón tay cái. Hay còn được gọi là chủng vân tay NƯỚC NGƯỢC.'**
  String get lrChar1;

  /// No description provided for @lrChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Là một trong những chủng mạnh, là chủng rất thông minh. Vẫn có tính cách của Loop nói chung.'**
  String get lrChar2;

  /// No description provided for @lrChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Hòa đồng, thân thiện nhưng ít khi chủ động tạo mối quan hệ. Giao tiếp theo phong cách cởi mở.'**
  String get lrChar3;

  /// No description provided for @lrChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Nhạy cảm trong giao tiếp, quan sát rất sắc bén.'**
  String get lrChar4;

  /// No description provided for @lrChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Thường không được sự hưởng ứng của mọi người xung quanh và dễ bị cô lập.'**
  String get lrChar5;

  /// No description provided for @lrChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Mong muốn tự do, không thích bị ràng buộc trong khuôn khổ truyền thống.'**
  String get lrChar6;

  /// No description provided for @lrChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Có tính hài hước.'**
  String get lrChar7;

  /// No description provided for @lrChar8.
  ///
  /// In vi, this message translates to:
  /// **'- \"Suy nghĩ ngoài chiếc hộp\". Có tư duy độc đáo, khác biệt và phá cách, đôi khi bị cho là lập dị.'**
  String get lrChar8;

  /// No description provided for @lrChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Theo đuổi sự độc đáo và khác biệt. Khát khao tự do, mong muốn phá vỡ truyền thống.'**
  String get lrChar9;

  /// No description provided for @lrChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Tư tưởng chống đối, không bao giờ thỏa hiệp với những gì mà họ không mong đợi.'**
  String get lrChar10;

  /// No description provided for @lrChar11.
  ///
  /// In vi, this message translates to:
  /// **'- Học hỏi rất nhanh từ môi trường và xã hội, dễ nắm bắt và mô phỏng tốt.'**
  String get lrChar11;

  /// No description provided for @lrChar12.
  ///
  /// In vi, this message translates to:
  /// **'- Không thể chịu đựng cuộc sống gò bó, đơn giản và buồn tẻ. Thích những điều thử thách, mới mẻ và huyền bí.'**
  String get lrChar12;

  /// No description provided for @lrChar13.
  ///
  /// In vi, this message translates to:
  /// **'- Đầy sáng tạo, đưa ra giải pháp nhanh và hiệu quả tại thời điểm khủng hoảng.'**
  String get lrChar13;

  /// No description provided for @lrChar14.
  ///
  /// In vi, this message translates to:
  /// **'- Tư duy ngược, suy nghĩ vượt giới hạn và luôn đột phá những sáng tạo mới.'**
  String get lrChar14;

  /// No description provided for @lrChar15.
  ///
  /// In vi, this message translates to:
  /// **'- Không quan tâm đến cách đánh giá của người khác, chỉ làm những điều họ muốn làm.'**
  String get lrChar15;

  /// No description provided for @lrChar16.
  ///
  /// In vi, this message translates to:
  /// **'- Cực kì tò mò, giỏi trong việc giải nghĩa, lý luận và có lối suy luận ngược.'**
  String get lrChar16;

  /// No description provided for @lrChar17.
  ///
  /// In vi, this message translates to:
  /// **'- Chu đáo, chân thành, sống tình cảm, biết quan tâm mọi người. Dễ bị kích động về mặt cảm xúc.'**
  String get lrChar17;

  /// No description provided for @lrAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Tính cách và phong cách mạnh mẽ và độc đáo, khó chấp nhận lối suy nghĩ bình thường hay chậm chạp; ghét những gì bình thường.'**
  String get lrAdv1;

  /// No description provided for @lrAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Năng lực sáng tạo rất cao, khả năng quan sát sắc bén, khả năng cảm nhận và thấu hiểu cao.'**
  String get lrAdv2;

  /// No description provided for @lrAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Thích suy luận, có khả năng làm việc một cách hiệu quả và kiểm soát mọi việc vào phút chót theo kiểu nước đến chân mới nhảy tốt hơn các kiểu vân tay khác.'**
  String get lrAdv3;

  /// No description provided for @lrAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Có khả năng tranh luận và phản biện rất tốt.'**
  String get lrAdv4;

  /// No description provided for @lrAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Đại diện cho mẫu người đấu tranh vì hòa bình, dám đứng lên vì quyền lợi của người khác hay bản thân mình.'**
  String get lrAdv5;

  /// No description provided for @lrAdv6.
  ///
  /// In vi, this message translates to:
  /// **'- Hứng thú với những điều huyền bí.'**
  String get lrAdv6;

  /// No description provided for @lrDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Không thể chịu đựng cuộc sống gò bó, đơn giản và buồn tẻ.'**
  String get lrDisadv1;

  /// No description provided for @lrDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Thường gây sốc người khác bằng ngôn từ của mình. Dám nghĩ dám làm đôi khi trở thành lập dị.'**
  String get lrDisadv2;

  /// No description provided for @lrDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Tư tưởng chống đối, không bao giờ thỏa hiệp với những gì mà họ không mong đợi.'**
  String get lrDisadv3;

  /// No description provided for @lrDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Vì đa phần suy nghĩ và hành động ngược lại với số đông nên nếu không cân bằng thì dễ làm bất hòa giữa các mối quan hệ xung quanh trong công việc và cuộc sống.'**
  String get lrDisadv4;

  /// No description provided for @lrDisadv5.
  ///
  /// In vi, this message translates to:
  /// **'- Cái tôi lớn.'**
  String get lrDisadv5;

  /// No description provided for @lrDisadv6.
  ///
  /// In vi, this message translates to:
  /// **'- Thích làm mọi công việc với những suy nghĩ đối lập, hay phán đoán.'**
  String get lrDisadv6;

  /// No description provided for @lrDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Chấp nhận các đặc tính độc đáo của mình cũng như của người khác.'**
  String get lrDev1;

  /// No description provided for @lrDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Phát huy sự nhiệt tình đặt câu hỏi.'**
  String get lrDev2;

  /// No description provided for @lrDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Làm việc theo cảm tính, dễ thay đổi nguyên tắc và kế hoạch đã vạch ra. Vì vậy nên lập kế hoạch làm việc rõ ràng, chi tiết, tập trung vào mục tiêu và giám sát tiến độ thực hiện.'**
  String get lrDev3;

  /// No description provided for @lrDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Học để trở thành người hướng dẫn và chịu trách nhiệm với quy trình làm việc, đưa ra giải pháp cho vấn đề phát sinh.'**
  String get lrDev4;

  /// No description provided for @lrDev5.
  ///
  /// In vi, this message translates to:
  /// **'- Thường quyết định theo chủ quan cá nhân và cảm xúc nhất thời nên có thể gây ảnh hưởng đến hiệu quả công việc hoặc mối quan hệ. Do đó nên lắng nghe và cân nhắc kỹ trước khi ra quyết định.'**
  String get lrDev5;

  /// No description provided for @lrCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân LR:'**
  String get lrCommTitle;

  /// No description provided for @lrComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Khi giao tiếp với mẫu người này, cần chân thành, nhẹ nhàng để tạo sự tin tưởng, giúp cuộc nói chuyện cởi mở và hiệu quả hơn.'**
  String get lrComm1;

  /// No description provided for @lrComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Thể hiện sự quan tâm, dành thời gian để hỏi và trả lời, không ngắt lời họ.'**
  String get lrComm2;

  /// No description provided for @lrComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Chấp nhận sự độc đáo, sáng tạo của họ hơn là áp đặt họ trở thành ai đó.'**
  String get lrComm3;

  /// No description provided for @lrComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Tránh việc thiếu tôn trọng ý kiến hoặc ép buộc họ phải làm vì sẽ ảnh hưởng ngược đến kết quả hành động.'**
  String get lrComm4;

  /// No description provided for @lrComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Cần làm mẫu để dễ dàng bắt nhịp trong học tập. Những hoạt động khơi nguồn cảm hứng và sáng tạo là rất cần thiết.'**
  String get lrComm5;

  /// No description provided for @lrComm6.
  ///
  /// In vi, this message translates to:
  /// **'- Khuyến khích hỏi và kiên nhẫn trả lời, giúp bản thân tự tìm ra câu trả lời.'**
  String get lrComm6;

  /// No description provided for @luTitle.
  ///
  /// In vi, this message translates to:
  /// **' Vân Nước LU'**
  String get luTitle;

  /// No description provided for @luChar1.
  ///
  /// In vi, this message translates to:
  /// **'- Xác suất xuất hiện: 55%. Hình dạng như dòng nước chảy xuôi về phía ngón tay út. Hay còn được gọi là chủng vân tay NƯỚC.'**
  String get luChar1;

  /// No description provided for @luChar2.
  ///
  /// In vi, this message translates to:
  /// **'- Hòa đồng, cởi mở, thân thiện nhưng ít chủ động tạo mối quan hệ. Nhạy cảm trong giao tiếp, thích quan sát.'**
  String get luChar2;

  /// No description provided for @luChar3.
  ///
  /// In vi, this message translates to:
  /// **'- Không thích xung đột mâu thuẫn, đề cao tinh thần đồng đội, yêu thích hoạt động đội nhóm.'**
  String get luChar3;

  /// No description provided for @luChar4.
  ///
  /// In vi, this message translates to:
  /// **'- Là thành viên tốt trong đội nhóm, người chấp hành tốt, khả năng chịu đựng cao.'**
  String get luChar4;

  /// No description provided for @luChar5.
  ///
  /// In vi, this message translates to:
  /// **'- Thích nghi tốt, dễ hòa nhập với từng môi trường. Có tư duy linh hoạt và khả năng tương thích cao.'**
  String get luChar5;

  /// No description provided for @luChar6.
  ///
  /// In vi, this message translates to:
  /// **'- Nhiệt tình, chân thành và dễ cảm thông cho vấn đề của người khác. Rất coi trọng các mối quan hệ.'**
  String get luChar6;

  /// No description provided for @luChar7.
  ///
  /// In vi, this message translates to:
  /// **'- Biết lắng nghe và chấp nhận ý kiến của người khác.'**
  String get luChar7;

  /// No description provided for @luChar8.
  ///
  /// In vi, this message translates to:
  /// **'- Cư xử theo cách mọi người mong đợi, bằng cách nào đó chiều ý những người khác.'**
  String get luChar8;

  /// No description provided for @luChar9.
  ///
  /// In vi, this message translates to:
  /// **'- Chu đáo, biết quan tâm mọi người, sống tình cảm, thích tự do.'**
  String get luChar9;

  /// No description provided for @luChar10.
  ///
  /// In vi, this message translates to:
  /// **'- Không giỏi sáng tạo, tuy nhiên học hỏi rất nhanh từ môi trường và xã hội, dễ bắt chước và mô phỏng tốt.'**
  String get luChar10;

  /// No description provided for @luChar11.
  ///
  /// In vi, this message translates to:
  /// **'- Là một người dễ bị người khác ảnh hưởng.'**
  String get luChar11;

  /// No description provided for @luChar12.
  ///
  /// In vi, this message translates to:
  /// **'- Kỷ luật tự giác bản thân thấp.'**
  String get luChar12;

  /// No description provided for @luChar13.
  ///
  /// In vi, this message translates to:
  /// **'- Là người của xã hội, cộng đồng. Là một chủng khá phổ biến. Người mang chủng nay khá hiền và lành tính, dễ bị người khác chèn ép.'**
  String get luChar13;

  /// No description provided for @luChar14.
  ///
  /// In vi, this message translates to:
  /// **'- Lãng mạn, thích sự tự do.'**
  String get luChar14;

  /// No description provided for @luChar15.
  ///
  /// In vi, this message translates to:
  /// **'- Họ làm việc theo cảm tính và dễ thay đổi mục tiêu của mình.'**
  String get luChar15;

  /// No description provided for @luAdv1.
  ///
  /// In vi, this message translates to:
  /// **'- Khả năng bắt chước vượt trội, học nhanh trong môi trường và trong xã hội.'**
  String get luAdv1;

  /// No description provided for @luAdv2.
  ///
  /// In vi, this message translates to:
  /// **'- Mềm mại, nhẹ nhàng và cởi mở; lãng mạn, thích tự do và chỉ sống cho hiện tại.'**
  String get luAdv2;

  /// No description provided for @luAdv3.
  ///
  /// In vi, this message translates to:
  /// **'- Hướng tới sự hòa hợp và hòa bình, không thích sự mâu thuẫn, gay gắt hay xung đột.'**
  String get luAdv3;

  /// No description provided for @luAdv4.
  ///
  /// In vi, this message translates to:
  /// **'- Thuộc mẫu người cộng đồng xã hội thích những nơi đông người, thích nghi trước rồi mới giao tiếp, thích tham gia các hoạt động vì cộng đồng.'**
  String get luAdv4;

  /// No description provided for @luAdv5.
  ///
  /// In vi, this message translates to:
  /// **'- Cảm xúc, làm theo cảm xúc. Thường quan tâm tới những người xung quanh, dễ cảm thông cho vấn đề của người khác.'**
  String get luAdv5;

  /// No description provided for @luAdv6.
  ///
  /// In vi, this message translates to:
  /// **'- Suy nghĩ linh hoạt và tương thích, dễ bắt chước hoặc tái tạo ý tưởng của người khác thành ý tưởng của mình.'**
  String get luAdv6;

  /// No description provided for @luDisadv1.
  ///
  /// In vi, this message translates to:
  /// **'- Không có mục tiêu rõ ràng trong tâm trí, tham vọng không lớn.'**
  String get luDisadv1;

  /// No description provided for @luDisadv2.
  ///
  /// In vi, this message translates to:
  /// **'- Không có chính kiến, dễ bị tác động bởi những người xung quanh và môi trường.'**
  String get luDisadv2;

  /// No description provided for @luDisadv3.
  ///
  /// In vi, this message translates to:
  /// **'- Hay lo chuyện bao đồng.'**
  String get luDisadv3;

  /// No description provided for @luDisadv4.
  ///
  /// In vi, this message translates to:
  /// **'- Thụ động, dễ bị áp đặt.'**
  String get luDisadv4;

  /// No description provided for @luDisadv5.
  ///
  /// In vi, this message translates to:
  /// **'- Làm việc theo cảm tính, dễ thay đổi nguyên tắc và kế hoạch đã vạch ra.'**
  String get luDisadv5;

  /// No description provided for @luDisadv6.
  ///
  /// In vi, this message translates to:
  /// **'- Công việc, kế hoạch có thể bị trì hoãn vì lối sống tình cảm.'**
  String get luDisadv6;

  /// No description provided for @luDev1.
  ///
  /// In vi, this message translates to:
  /// **'- Làm việc theo cảm tính, dễ thay đổi nguyên tắc và kế hoạch đã vạch ra. Vì vậy nên lập kế hoạch làm việc rõ ràng, chi tiết, tập trung vào mục tiêu và giám sát tiến độ thực hiện. Tham gia các khóa học về ra quyết định và lập mục tiêu.'**
  String get luDev1;

  /// No description provided for @luDev2.
  ///
  /// In vi, this message translates to:
  /// **'- Học để trở thành người hướng dẫn và chịu trách nhiệm với quy trình làm việc, đưa ra giải pháp cho vấn đề phát sinh.'**
  String get luDev2;

  /// No description provided for @luDev3.
  ///
  /// In vi, this message translates to:
  /// **'- Công việc, kế hoạch có thể bị trì hoãn vì lối sống tình cảm. Chọn một người tri kỷ đáng tin cậy để động viên và khích lệ, đôn đốc việc thực hiện mục tiêu.'**
  String get luDev3;

  /// No description provided for @luDev4.
  ///
  /// In vi, this message translates to:
  /// **'- Chủ động giao tiếp. Tham gia các hoạt động cộng đồng khác nhau, chủ động nhận vị trí lãnh đạo, xây dựng sự tự tin. Tham khảo tự truyện của những người thành công.'**
  String get luDev4;

  /// No description provided for @luDev5.
  ///
  /// In vi, this message translates to:
  /// **'- Học cách nói \"không\" với người khác một cách thích hợp khi cần thiết.'**
  String get luDev5;

  /// No description provided for @luDev6.
  ///
  /// In vi, this message translates to:
  /// **'- Nước phải tìm cho mình NGƯỜI THẦY: Người Thầy sẽ như vật chứa, có thể định hình giúp NƯỚC. Là người định hướng, chỉ bảo, thúc đẩy, động viên để nước có thể dễ dàng hơn về hướng đi trong cuộc đời mình. Hãy tìm cho mình người Thầy về phát triển bản thân, người thầy về phát triển chuyên môn, phát triển kinh doanh, … .'**
  String get luDev6;

  /// No description provided for @luDev7.
  ///
  /// In vi, this message translates to:
  /// **'- Nước cần phải có MÔI TRƯỜNG TỐT.Nước dễ thích nghi với môi trường. Dễ hòa nhập với môi trường và khả năng sao chép tốt. Chính vì điều đó Nước ở bên cạnh ai, trong môi trường như thế nào nước sẽ dễ dàng trở thành những người tương tự như thế.'**
  String get luDev7;

  /// No description provided for @luDev8.
  ///
  /// In vi, this message translates to:
  /// **'- Nước cần HÌNH TƯỢNG. Nước giỏi sao chép, chính vì vậy nước hãy tìm ra những thần tượng cho mình. Nghiên cứu, tìm hiểu, học hỏi từ họ để tìm ra những triết lý sống, cách thức mà họ đã thành công. Từ đó nước áp dụng bằng khả năng sao chép của chính mình.'**
  String get luDev8;

  /// No description provided for @luDev9.
  ///
  /// In vi, this message translates to:
  /// **'- Chọn bạn mà chơi, chọn nơi mà ở, chọn thầy mà học.'**
  String get luDev9;

  /// No description provided for @luCommTitle.
  ///
  /// In vi, this message translates to:
  /// **'Giao tiếp với với vân LU:'**
  String get luCommTitle;

  /// No description provided for @luComm1.
  ///
  /// In vi, this message translates to:
  /// **'- Khi giao tiếp với mẫu người này, cần chân thành, nhẹ nhàng để tạo sự tin tưởng, giúp cuộc nói chuyện cởi mở và hiệu quả hơn.'**
  String get luComm1;

  /// No description provided for @luComm2.
  ///
  /// In vi, this message translates to:
  /// **'- Thể hiện sự quan tâm, dành thời gian để hỏi và trả lời, khen ngợi, động viên.'**
  String get luComm2;

  /// No description provided for @luComm3.
  ///
  /// In vi, this message translates to:
  /// **'- Cần làm mẫu cụ thể để dễ dàng bắt nhịp trang học tập.'**
  String get luComm3;

  /// No description provided for @luComm4.
  ///
  /// In vi, this message translates to:
  /// **'- Cần theo dõi, thường xuyên khuyến khích và động viên trẻ kịp thời để truyền sự tự tin, tránh việc bỏ dở nửa chừng theo tâm trạng.'**
  String get luComm4;

  /// No description provided for @luComm5.
  ///
  /// In vi, this message translates to:
  /// **'- Tạo một môi trường kỷ luật nghiêm ngặt.'**
  String get luComm5;

  /// No description provided for @luComm6.
  ///
  /// In vi, this message translates to:
  /// **'- Dùng phương pháp tương tác khi hướng dẫn: thảo luận, để người khác đưa ra câu hỏi và mình trả lời.'**
  String get luComm6;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
