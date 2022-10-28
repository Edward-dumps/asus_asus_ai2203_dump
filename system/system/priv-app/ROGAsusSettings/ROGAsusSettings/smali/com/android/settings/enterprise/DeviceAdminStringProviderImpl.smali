.class Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;
.super Ljava/lang/Object;
.source "DeviceAdminStringProviderImpl.java"

# interfaces
.implements Lcom/android/settingslib/enterprise/DeviceAdminStringProvider;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDefaultDisabledByPolicyContent()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->default_admin_support_msg:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDisabledByPolicyTitle()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisableCameraTitle()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_camera:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisableScreenCaptureTitle()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_screen_capture:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledBiometricsParentConsentContent()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_content_biometric_parental_consent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledBiometricsParentConsentTitle()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_biometric_parental_consent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledByPolicyTitleForFinancedDevice()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_financed_device:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowAdjustVolumeTitle()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_adjust_volume:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowOutgoingCallsTitle()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_outgoing_calls:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowSmsTitle()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_sms:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLearnMoreHelpPageUrl()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->help_url_action_disabled_by_it_admin:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuspendPackagesTitle()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_suspend_packages:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
