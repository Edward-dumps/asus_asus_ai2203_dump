.class public Lcom/android/settings/datatransfer/DataTransferPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DataTransferPreferenceController.java"


# static fields
.field private static final DATA_TRANSFER_LAUNCHER:Ljava/lang/String; = "com.futuredial.asusdatatransfer.LauncherActivity"

.field private static final DATA_TRANSFER_PACKAGE_NAME:Ljava/lang/String; = "com.futuredial.asusdatatransfer"

.field private static final EXTRA_KEY_LAUNCHER:Ljava/lang/String; = "launcher"

.field private static final EXTRA_VALUE_LAUNCHER_SETTINGS:Ljava/lang/String; = "settings"

.field public static final KEY_DATA_TRANSFER:Ljava/lang/String; = "toggle_data_transfer"

.field private static final TAG:Ljava/lang/String; = "DataTransferPreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataTransferPreferenceController:Landroidx/preference/Preference;

.field private mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "toggle_data_transfer"

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/android/settings/datatransfer/DataTransferPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datatransfer/DataTransferPreferenceController$1;-><init>(Lcom/android/settings/datatransfer/DataTransferPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/datatransfer/DataTransferPreferenceController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 45
    iput-object p1, p0, Lcom/android/settings/datatransfer/DataTransferPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datatransfer/DataTransferPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/settings/datatransfer/DataTransferPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/android/settings/datatransfer/DataTransferPreferenceController;->startDataTransferSettings(Landroid/content/Context;)V

    return-void
.end method

.method public static isDataTransferExist(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.futuredial.asusdatatransfer"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 75
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "DataTransferPreferenceController"

    const-string v1, "com.futuredial.asusdatatransferis not installed"

    .line 77
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static startDataTransferSettings(Landroid/content/Context;)V
    .locals 4

    .line 85
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.futuredial.asusdatatransfer"

    const-string v3, "com.futuredial.asusdatatransfer.LauncherActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launcher"

    const-string v2, "settings"

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000000

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DataTransferPreferenceController"

    const-string v0, "Could not execute com.futuredial.asusdatatransfer"

    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "toggle_data_transfer"

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datatransfer/DataTransferPreferenceController;->mDataTransferPreferenceController:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/settings/datatransfer/DataTransferPreferenceController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 59
    invoke-static {}, Lcom/android/settings/Utils;->isPicaso()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/datatransfer/DataTransferPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/datatransfer/DataTransferPreferenceController;->isDataTransferExist(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
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
