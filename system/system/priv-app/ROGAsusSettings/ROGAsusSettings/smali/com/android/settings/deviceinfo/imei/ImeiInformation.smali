.class public Lcom/android/settings/deviceinfo/imei/ImeiInformation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ImeiInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;
    }
.end annotation


# static fields
.field static final ID_ASUS_MEID_NUMBER_VALUE:Ljava/lang/String; = "asus_meid_number_value"

.field static final ID_CDMA_SETTINGS:Ljava/lang/String; = "cdma_settings"

.field static final ID_GSM_SETTINGS:Ljava/lang/String; = "gsm_settings"

.field static final ID_IMEI_SV_VALUE:Ljava/lang/String; = "imei_sv_value"

.field static final ID_IMEI_VALUE:Ljava/lang/String; = "imei_value"

.field static final ID_MEID_NUMBER_VALUE:Ljava/lang/String; = "meid_number_value"

.field static final ID_MIN_NUMBER_VALUE:Ljava/lang/String; = "min_number_value"

.field static final ID_PRL_VERSION_VALUE:Ljava/lang/String; = "prl_version_value"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private isMultiSIM:Z

.field private mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

.field private mIsCustomizeForCNHK:Z

.field private mSlotId:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 344
    new-instance v0, Lcom/android/settings/deviceinfo/imei/ImeiInformation$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->isMultiSIM:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mIsCustomizeForCNHK:Z

    return-void
.end method

.method private static getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 79
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v1, Landroid/text/style/TtsSpan$DigitsBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$DigitsBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p0

    const/4 v1, 0x0

    .line 82
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method private initPreferenceScreen(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 235
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->isMultiSIM:Z

    :goto_1
    if-ge v0, p1, :cond_3

    .line 238
    sget v1, Lcom/android/settings/R$xml;->asus_device_info_phone_status:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 240
    iput v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSlotId:I

    .line 241
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 242
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 244
    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 246
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_2

    .line 247
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->isValidSlotIndex(ILandroid/telephony/TelephonyManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    iput-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 250
    iput-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 252
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->populateImeiInfo()V

    .line 253
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->setNewKey(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private isValidSlotIndex(ILandroid/telephony/TelephonyManager;)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 228
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setNewKey(I)V
    .locals 7

    .line 260
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 263
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 264
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, v3, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->updateTitle(Landroidx/preference/Preference;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateDialogForCdmaPhone()V
    .locals 4

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mIsCustomizeForCNHK:Z

    const-string v2, "meid_number_value"

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->getMeid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->removeViewFromScreen(Ljava/lang/String;)V

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    .line 153
    iget-object v3, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    const-string v3, "min_number_value"

    .line 152
    invoke-virtual {v1, v3, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 156
    sget v1, Lcom/android/settings/R$bool;->config_msid_enable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->status_msid_number:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prl_version_value"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSlotId:I

    .line 168
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "imei_value"

    .line 167
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSlotId:I

    .line 170
    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v1, "imei_sv_value"

    .line 169
    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDialogForGsmPhone()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSlotId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "imei_value"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSlotId:I

    .line 184
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "imei_sv_value"

    .line 183
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    const-string v1, "prl_version_value"

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->removeViewFromScreen(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    const-string v1, "min_number_value"

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->removeViewFromScreen(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    const-string v1, "meid_number_value"

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->removeViewFromScreen(Ljava/lang/String;)V

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mIsCustomizeForCNHK:Z

    const-string v1, "asus_meid_number_value"

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSlotId:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->getMeid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 194
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->removeViewFromScreen(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateTitle(Landroidx/preference/Preference;I)V
    .locals 5

    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->isMultiSIM:Z

    if-eqz v1, :cond_0

    const-string v1, "MEID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->slot_number:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-virtual {p0, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method getMeid()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSlotId:I

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x29

    return p0
.end method

.method isCdmaLteEnabled()Z
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance p1, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;-><init>(Lcom/android/settings/deviceinfo/imei/ImeiInformation;Lcom/android/settings/deviceinfo/imei/ImeiInformation$1;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;

    .line 100
    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation$mDialog;->setSettingsPreferenceFragment(Lcom/android/settings/SettingsPreferenceFragment;)V

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSlotId:I

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 103
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    iget v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSlotId:I

    .line 104
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 105
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 106
    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_0

    .line 107
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 108
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    .line 109
    :cond_0
    iget p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSlotId:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->isValidSlotIndex(ILandroid/telephony/TelephonyManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iput-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    .line 112
    :cond_1
    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :goto_0
    const-string p1, "ro.config.versatility"

    const-string v0, "WW"

    .line 116
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CN"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "HK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mIsCustomizeForCNHK:Z

    .line 120
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() mIsCustomizeForCNHK ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mIsCustomizeForCNHK:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImeiInformation"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->initPreferenceScreen(I)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 295
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "list"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/16 v1, 0xd

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 300
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/ListView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public populateImeiInfo()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyManager for this slot is null. Invalid slot? id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->mSlotId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImeiInformation"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->updateDialogForCdmaPhone()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInformation;->updateDialogForGsmPhone()V

    :goto_0
    return-void
.end method
