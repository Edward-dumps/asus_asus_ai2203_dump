.class public Lcom/android/settings/fuelgauge/AsusDetectDranReportController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AsusDetectDranReportController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final KEY_DETECT_DRAN_REPORT:Ljava/lang/String; = "battery_draning_report"

.field private static final TAG:Ljava/lang/String; = "AsusDetectDranReportController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    new-instance p2, Lcom/android/settings/fuelgauge/AsusDetectDranReportController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/fuelgauge/AsusDetectDranReportController$1;-><init>(Lcom/android/settings/fuelgauge/AsusDetectDranReportController;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/AsusDetectDranReportController;->mPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 43
    iput-object p1, p0, Lcom/android/settings/fuelgauge/AsusDetectDranReportController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/AsusDetectDranReportController;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusDetectDranReportController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/android/settings/fuelgauge/AsusDetectDranReportController;->startDetectDranReport(Landroid/content/Context;)V

    return-void
.end method

.method private static startDetectDranReport(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "mobile_manager://battery/BatteryDrainingReport"

    .line 76
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobilemanager ActivityNotFoundException not found exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsusDetectDranReportController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "battery_draning_report"

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AsusDetectDranReportController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusDetectDranReportController;->mPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

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

    const-string p0, "battery_draning_report"

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
