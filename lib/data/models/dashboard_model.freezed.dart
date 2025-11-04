// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) {
  return _DashboardModel.fromJson(json);
}

/// @nodoc
mixin _$DashboardModel {
  @JsonKey(name: 'total_customers')
  int get totalCustomers => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_categories')
  int get totalCategories => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_messages_sent')
  int get totalMessagesSent => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_messages_assigned')
  int get totalMessagesAssigned => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_message_fail')
  int get totalMessageFail => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_status')
  InvoiceStatus get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'top_customers')
  List<TopCustomer> get topCustomers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardModelCopyWith<DashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardModelCopyWith<$Res> {
  factory $DashboardModelCopyWith(
          DashboardModel value, $Res Function(DashboardModel) then) =
      _$DashboardModelCopyWithImpl<$Res, DashboardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_customers') int totalCustomers,
      @JsonKey(name: 'total_categories') int totalCategories,
      @JsonKey(name: 'total_messages_sent') int totalMessagesSent,
      @JsonKey(name: 'total_messages_assigned') int totalMessagesAssigned,
      @JsonKey(name: 'total_message_fail') int totalMessageFail,
      @JsonKey(name: 'invoice_status') InvoiceStatus invoiceStatus,
      @JsonKey(name: 'top_customers') List<TopCustomer> topCustomers});

  $InvoiceStatusCopyWith<$Res> get invoiceStatus;
}

/// @nodoc
class _$DashboardModelCopyWithImpl<$Res, $Val extends DashboardModel>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCustomers = null,
    Object? totalCategories = null,
    Object? totalMessagesSent = null,
    Object? totalMessagesAssigned = null,
    Object? totalMessageFail = null,
    Object? invoiceStatus = null,
    Object? topCustomers = null,
  }) {
    return _then(_value.copyWith(
      totalCustomers: null == totalCustomers
          ? _value.totalCustomers
          : totalCustomers // ignore: cast_nullable_to_non_nullable
              as int,
      totalCategories: null == totalCategories
          ? _value.totalCategories
          : totalCategories // ignore: cast_nullable_to_non_nullable
              as int,
      totalMessagesSent: null == totalMessagesSent
          ? _value.totalMessagesSent
          : totalMessagesSent // ignore: cast_nullable_to_non_nullable
              as int,
      totalMessagesAssigned: null == totalMessagesAssigned
          ? _value.totalMessagesAssigned
          : totalMessagesAssigned // ignore: cast_nullable_to_non_nullable
              as int,
      totalMessageFail: null == totalMessageFail
          ? _value.totalMessageFail
          : totalMessageFail // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceStatus: null == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus,
      topCustomers: null == topCustomers
          ? _value.topCustomers
          : topCustomers // ignore: cast_nullable_to_non_nullable
              as List<TopCustomer>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceStatusCopyWith<$Res> get invoiceStatus {
    return $InvoiceStatusCopyWith<$Res>(_value.invoiceStatus, (value) {
      return _then(_value.copyWith(invoiceStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardModelImplCopyWith<$Res>
    implements $DashboardModelCopyWith<$Res> {
  factory _$$DashboardModelImplCopyWith(_$DashboardModelImpl value,
          $Res Function(_$DashboardModelImpl) then) =
      __$$DashboardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_customers') int totalCustomers,
      @JsonKey(name: 'total_categories') int totalCategories,
      @JsonKey(name: 'total_messages_sent') int totalMessagesSent,
      @JsonKey(name: 'total_messages_assigned') int totalMessagesAssigned,
      @JsonKey(name: 'total_message_fail') int totalMessageFail,
      @JsonKey(name: 'invoice_status') InvoiceStatus invoiceStatus,
      @JsonKey(name: 'top_customers') List<TopCustomer> topCustomers});

  @override
  $InvoiceStatusCopyWith<$Res> get invoiceStatus;
}

/// @nodoc
class __$$DashboardModelImplCopyWithImpl<$Res>
    extends _$DashboardModelCopyWithImpl<$Res, _$DashboardModelImpl>
    implements _$$DashboardModelImplCopyWith<$Res> {
  __$$DashboardModelImplCopyWithImpl(
      _$DashboardModelImpl _value, $Res Function(_$DashboardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCustomers = null,
    Object? totalCategories = null,
    Object? totalMessagesSent = null,
    Object? totalMessagesAssigned = null,
    Object? totalMessageFail = null,
    Object? invoiceStatus = null,
    Object? topCustomers = null,
  }) {
    return _then(_$DashboardModelImpl(
      totalCustomers: null == totalCustomers
          ? _value.totalCustomers
          : totalCustomers // ignore: cast_nullable_to_non_nullable
              as int,
      totalCategories: null == totalCategories
          ? _value.totalCategories
          : totalCategories // ignore: cast_nullable_to_non_nullable
              as int,
      totalMessagesSent: null == totalMessagesSent
          ? _value.totalMessagesSent
          : totalMessagesSent // ignore: cast_nullable_to_non_nullable
              as int,
      totalMessagesAssigned: null == totalMessagesAssigned
          ? _value.totalMessagesAssigned
          : totalMessagesAssigned // ignore: cast_nullable_to_non_nullable
              as int,
      totalMessageFail: null == totalMessageFail
          ? _value.totalMessageFail
          : totalMessageFail // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceStatus: null == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus,
      topCustomers: null == topCustomers
          ? _value._topCustomers
          : topCustomers // ignore: cast_nullable_to_non_nullable
              as List<TopCustomer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardModelImpl implements _DashboardModel {
  const _$DashboardModelImpl(
      {@JsonKey(name: 'total_customers') required this.totalCustomers,
      @JsonKey(name: 'total_categories') required this.totalCategories,
      @JsonKey(name: 'total_messages_sent') required this.totalMessagesSent,
      @JsonKey(name: 'total_messages_assigned')
      required this.totalMessagesAssigned,
      @JsonKey(name: 'total_message_fail') required this.totalMessageFail,
      @JsonKey(name: 'invoice_status') required this.invoiceStatus,
      @JsonKey(name: 'top_customers')
      required final List<TopCustomer> topCustomers})
      : _topCustomers = topCustomers;

  factory _$DashboardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardModelImplFromJson(json);

  @override
  @JsonKey(name: 'total_customers')
  final int totalCustomers;
  @override
  @JsonKey(name: 'total_categories')
  final int totalCategories;
  @override
  @JsonKey(name: 'total_messages_sent')
  final int totalMessagesSent;
  @override
  @JsonKey(name: 'total_messages_assigned')
  final int totalMessagesAssigned;
  @override
  @JsonKey(name: 'total_message_fail')
  final int totalMessageFail;
  @override
  @JsonKey(name: 'invoice_status')
  final InvoiceStatus invoiceStatus;
  final List<TopCustomer> _topCustomers;
  @override
  @JsonKey(name: 'top_customers')
  List<TopCustomer> get topCustomers {
    if (_topCustomers is EqualUnmodifiableListView) return _topCustomers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topCustomers);
  }

  @override
  String toString() {
    return 'DashboardModel(totalCustomers: $totalCustomers, totalCategories: $totalCategories, totalMessagesSent: $totalMessagesSent, totalMessagesAssigned: $totalMessagesAssigned, totalMessageFail: $totalMessageFail, invoiceStatus: $invoiceStatus, topCustomers: $topCustomers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardModelImpl &&
            (identical(other.totalCustomers, totalCustomers) ||
                other.totalCustomers == totalCustomers) &&
            (identical(other.totalCategories, totalCategories) ||
                other.totalCategories == totalCategories) &&
            (identical(other.totalMessagesSent, totalMessagesSent) ||
                other.totalMessagesSent == totalMessagesSent) &&
            (identical(other.totalMessagesAssigned, totalMessagesAssigned) ||
                other.totalMessagesAssigned == totalMessagesAssigned) &&
            (identical(other.totalMessageFail, totalMessageFail) ||
                other.totalMessageFail == totalMessageFail) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            const DeepCollectionEquality()
                .equals(other._topCustomers, _topCustomers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalCustomers,
      totalCategories,
      totalMessagesSent,
      totalMessagesAssigned,
      totalMessageFail,
      invoiceStatus,
      const DeepCollectionEquality().hash(_topCustomers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardModelImplCopyWith<_$DashboardModelImpl> get copyWith =>
      __$$DashboardModelImplCopyWithImpl<_$DashboardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardModelImplToJson(
      this,
    );
  }
}

abstract class _DashboardModel implements DashboardModel {
  const factory _DashboardModel(
      {@JsonKey(name: 'total_customers') required final int totalCustomers,
      @JsonKey(name: 'total_categories') required final int totalCategories,
      @JsonKey(name: 'total_messages_sent')
      required final int totalMessagesSent,
      @JsonKey(name: 'total_messages_assigned')
      required final int totalMessagesAssigned,
      @JsonKey(name: 'total_message_fail') required final int totalMessageFail,
      @JsonKey(name: 'invoice_status')
      required final InvoiceStatus invoiceStatus,
      @JsonKey(name: 'top_customers')
      required final List<TopCustomer> topCustomers}) = _$DashboardModelImpl;

  factory _DashboardModel.fromJson(Map<String, dynamic> json) =
      _$DashboardModelImpl.fromJson;

  @override
  @JsonKey(name: 'total_customers')
  int get totalCustomers;
  @override
  @JsonKey(name: 'total_categories')
  int get totalCategories;
  @override
  @JsonKey(name: 'total_messages_sent')
  int get totalMessagesSent;
  @override
  @JsonKey(name: 'total_messages_assigned')
  int get totalMessagesAssigned;
  @override
  @JsonKey(name: 'total_message_fail')
  int get totalMessageFail;
  @override
  @JsonKey(name: 'invoice_status')
  InvoiceStatus get invoiceStatus;
  @override
  @JsonKey(name: 'top_customers')
  List<TopCustomer> get topCustomers;
  @override
  @JsonKey(ignore: true)
  _$$DashboardModelImplCopyWith<_$DashboardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceStatus _$InvoiceStatusFromJson(Map<String, dynamic> json) {
  return _InvoiceStatus.fromJson(json);
}

/// @nodoc
mixin _$InvoiceStatus {
  @JsonKey(name: 'pending_invoices')
  int get pendingInvoices => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_paid_invoices')
  int get fullPaidInvoices => throw _privateConstructorUsedError;
  @JsonKey(name: 'partial_paid_invoices')
  int get partialPaidInvoices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceStatusCopyWith<InvoiceStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceStatusCopyWith<$Res> {
  factory $InvoiceStatusCopyWith(
          InvoiceStatus value, $Res Function(InvoiceStatus) then) =
      _$InvoiceStatusCopyWithImpl<$Res, InvoiceStatus>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pending_invoices') int pendingInvoices,
      @JsonKey(name: 'full_paid_invoices') int fullPaidInvoices,
      @JsonKey(name: 'partial_paid_invoices') int partialPaidInvoices});
}

/// @nodoc
class _$InvoiceStatusCopyWithImpl<$Res, $Val extends InvoiceStatus>
    implements $InvoiceStatusCopyWith<$Res> {
  _$InvoiceStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingInvoices = null,
    Object? fullPaidInvoices = null,
    Object? partialPaidInvoices = null,
  }) {
    return _then(_value.copyWith(
      pendingInvoices: null == pendingInvoices
          ? _value.pendingInvoices
          : pendingInvoices // ignore: cast_nullable_to_non_nullable
              as int,
      fullPaidInvoices: null == fullPaidInvoices
          ? _value.fullPaidInvoices
          : fullPaidInvoices // ignore: cast_nullable_to_non_nullable
              as int,
      partialPaidInvoices: null == partialPaidInvoices
          ? _value.partialPaidInvoices
          : partialPaidInvoices // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceStatusImplCopyWith<$Res>
    implements $InvoiceStatusCopyWith<$Res> {
  factory _$$InvoiceStatusImplCopyWith(
          _$InvoiceStatusImpl value, $Res Function(_$InvoiceStatusImpl) then) =
      __$$InvoiceStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pending_invoices') int pendingInvoices,
      @JsonKey(name: 'full_paid_invoices') int fullPaidInvoices,
      @JsonKey(name: 'partial_paid_invoices') int partialPaidInvoices});
}

/// @nodoc
class __$$InvoiceStatusImplCopyWithImpl<$Res>
    extends _$InvoiceStatusCopyWithImpl<$Res, _$InvoiceStatusImpl>
    implements _$$InvoiceStatusImplCopyWith<$Res> {
  __$$InvoiceStatusImplCopyWithImpl(
      _$InvoiceStatusImpl _value, $Res Function(_$InvoiceStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingInvoices = null,
    Object? fullPaidInvoices = null,
    Object? partialPaidInvoices = null,
  }) {
    return _then(_$InvoiceStatusImpl(
      pendingInvoices: null == pendingInvoices
          ? _value.pendingInvoices
          : pendingInvoices // ignore: cast_nullable_to_non_nullable
              as int,
      fullPaidInvoices: null == fullPaidInvoices
          ? _value.fullPaidInvoices
          : fullPaidInvoices // ignore: cast_nullable_to_non_nullable
              as int,
      partialPaidInvoices: null == partialPaidInvoices
          ? _value.partialPaidInvoices
          : partialPaidInvoices // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceStatusImpl implements _InvoiceStatus {
  const _$InvoiceStatusImpl(
      {@JsonKey(name: 'pending_invoices') required this.pendingInvoices,
      @JsonKey(name: 'full_paid_invoices') required this.fullPaidInvoices,
      @JsonKey(name: 'partial_paid_invoices')
      required this.partialPaidInvoices});

  factory _$InvoiceStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceStatusImplFromJson(json);

  @override
  @JsonKey(name: 'pending_invoices')
  final int pendingInvoices;
  @override
  @JsonKey(name: 'full_paid_invoices')
  final int fullPaidInvoices;
  @override
  @JsonKey(name: 'partial_paid_invoices')
  final int partialPaidInvoices;

  @override
  String toString() {
    return 'InvoiceStatus(pendingInvoices: $pendingInvoices, fullPaidInvoices: $fullPaidInvoices, partialPaidInvoices: $partialPaidInvoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceStatusImpl &&
            (identical(other.pendingInvoices, pendingInvoices) ||
                other.pendingInvoices == pendingInvoices) &&
            (identical(other.fullPaidInvoices, fullPaidInvoices) ||
                other.fullPaidInvoices == fullPaidInvoices) &&
            (identical(other.partialPaidInvoices, partialPaidInvoices) ||
                other.partialPaidInvoices == partialPaidInvoices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pendingInvoices, fullPaidInvoices, partialPaidInvoices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceStatusImplCopyWith<_$InvoiceStatusImpl> get copyWith =>
      __$$InvoiceStatusImplCopyWithImpl<_$InvoiceStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceStatusImplToJson(
      this,
    );
  }
}

abstract class _InvoiceStatus implements InvoiceStatus {
  const factory _InvoiceStatus(
      {@JsonKey(name: 'pending_invoices') required final int pendingInvoices,
      @JsonKey(name: 'full_paid_invoices') required final int fullPaidInvoices,
      @JsonKey(name: 'partial_paid_invoices')
      required final int partialPaidInvoices}) = _$InvoiceStatusImpl;

  factory _InvoiceStatus.fromJson(Map<String, dynamic> json) =
      _$InvoiceStatusImpl.fromJson;

  @override
  @JsonKey(name: 'pending_invoices')
  int get pendingInvoices;
  @override
  @JsonKey(name: 'full_paid_invoices')
  int get fullPaidInvoices;
  @override
  @JsonKey(name: 'partial_paid_invoices')
  int get partialPaidInvoices;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceStatusImplCopyWith<_$InvoiceStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopCustomer _$TopCustomerFromJson(Map<String, dynamic> json) {
  return _TopCustomer.fromJson(json);
}

/// @nodoc
mixin _$TopCustomer {
  @JsonKey(name: 'customer_name')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_loads')
  double get numberOfLoads => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopCustomerCopyWith<TopCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCustomerCopyWith<$Res> {
  factory $TopCustomerCopyWith(
          TopCustomer value, $Res Function(TopCustomer) then) =
      _$TopCustomerCopyWithImpl<$Res, TopCustomer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'number_of_loads') double numberOfLoads});
}

/// @nodoc
class _$TopCustomerCopyWithImpl<$Res, $Val extends TopCustomer>
    implements $TopCustomerCopyWith<$Res> {
  _$TopCustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? numberOfLoads = null,
  }) {
    return _then(_value.copyWith(
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfLoads: null == numberOfLoads
          ? _value.numberOfLoads
          : numberOfLoads // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopCustomerImplCopyWith<$Res>
    implements $TopCustomerCopyWith<$Res> {
  factory _$$TopCustomerImplCopyWith(
          _$TopCustomerImpl value, $Res Function(_$TopCustomerImpl) then) =
      __$$TopCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'number_of_loads') double numberOfLoads});
}

/// @nodoc
class __$$TopCustomerImplCopyWithImpl<$Res>
    extends _$TopCustomerCopyWithImpl<$Res, _$TopCustomerImpl>
    implements _$$TopCustomerImplCopyWith<$Res> {
  __$$TopCustomerImplCopyWithImpl(
      _$TopCustomerImpl _value, $Res Function(_$TopCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? numberOfLoads = null,
  }) {
    return _then(_$TopCustomerImpl(
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfLoads: null == numberOfLoads
          ? _value.numberOfLoads
          : numberOfLoads // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopCustomerImpl implements _TopCustomer {
  const _$TopCustomerImpl(
      {@JsonKey(name: 'customer_name') required this.customerName,
      @JsonKey(name: 'number_of_loads') required this.numberOfLoads});

  factory _$TopCustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCustomerImplFromJson(json);

  @override
  @JsonKey(name: 'customer_name')
  final String customerName;
  @override
  @JsonKey(name: 'number_of_loads')
  final double numberOfLoads;

  @override
  String toString() {
    return 'TopCustomer(customerName: $customerName, numberOfLoads: $numberOfLoads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCustomerImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.numberOfLoads, numberOfLoads) ||
                other.numberOfLoads == numberOfLoads));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerName, numberOfLoads);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopCustomerImplCopyWith<_$TopCustomerImpl> get copyWith =>
      __$$TopCustomerImplCopyWithImpl<_$TopCustomerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCustomerImplToJson(
      this,
    );
  }
}

abstract class _TopCustomer implements TopCustomer {
  const factory _TopCustomer(
      {@JsonKey(name: 'customer_name') required final String customerName,
      @JsonKey(name: 'number_of_loads')
      required final double numberOfLoads}) = _$TopCustomerImpl;

  factory _TopCustomer.fromJson(Map<String, dynamic> json) =
      _$TopCustomerImpl.fromJson;

  @override
  @JsonKey(name: 'customer_name')
  String get customerName;
  @override
  @JsonKey(name: 'number_of_loads')
  double get numberOfLoads;
  @override
  @JsonKey(ignore: true)
  _$$TopCustomerImplCopyWith<_$TopCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
