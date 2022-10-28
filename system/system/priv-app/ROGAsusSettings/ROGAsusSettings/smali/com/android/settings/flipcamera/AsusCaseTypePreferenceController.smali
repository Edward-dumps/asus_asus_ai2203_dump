.class public Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AsusCaseTypePreferenceController.java"


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "com.android.settings.FLIPCOVER"

.field public static final KEY_CASE_TYPE:Ljava/lang/String; = "key_case_type"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "AsusCaseTypePreferenceController"


# instance fields
.field private mCaseTypePreference:Landroidx/preference/Preference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    new-instance p2, Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController$1;-><init>(Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static startCaseTypeSettings(Landroid/content/Context;)V
    .locals 3

    const-string v0, "AsusCaseTypePreferenceController"

    :try_start_0
    const-string v1, "startCaseTypeSettings"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings.FLIPCOVER"

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.settings"

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 100
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "key_case_type"

    .line 50
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;->mCaseTypePreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 52
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_case_type"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 70
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/android/settings/flipcamera/AsusCaseTypeActivity$AsusCaseTypeFragment;->getCaseType(Landroid/content/ContentResolver;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 80
    sget p0, Lcom/android/settings/R$string;->asus_advanced_settings_case_type_none:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 73
    :cond_0
    sget p0, Lcom/android/settings/R$string;->asus_advanced_settings_case_type_rhinoshield:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 76
    :cond_1
    sget p0, Lcom/android/settings/R$string;->asus_advanced_settings_case_type_asus:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
