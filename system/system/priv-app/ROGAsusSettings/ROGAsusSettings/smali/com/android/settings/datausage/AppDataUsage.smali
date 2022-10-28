.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "AppDataUsage.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field private mAppFireWallMode:I

.field private mAppItem:Lcom/android/settingslib/AppItem;

.field private mAppList:Landroidx/preference/PreferenceCategory;

.field private final mAppPrefCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/util/ArraySet<",
            "Landroidx/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppSettings:Landroidx/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppUid:I

.field private mBackgroundUsage:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCycle:Lcom/android/settings/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mForegroundUsage:Landroidx/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsUseMobile:Z

.field mLabel:Ljava/lang/CharSequence;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mSelectedCycle:J

.field mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroidx/preference/Preference;

.field final mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mUsageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation
.end field

.field private mUseMobileSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mUseWifiSwitchPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    .line 101
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    .line 499
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 512
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 563
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$3;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppPrefCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/datausage/AppDataUsage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/AppDataUsage;)J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mSelectedCycle:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/datausage/AppDataUsage;)Landroid/util/ArraySet;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private addUid(I)V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 424
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAppDataUsageMode(Landroid/content/Context;)V
    .locals 7

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mobilemanager_firewall_state"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 339
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->parseList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 341
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "AppDataUsage"

    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 343
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 344
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 347
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not parse right rule "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppFireWallMode:I

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppDataUsageMode mAppFireWallMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppFireWallMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getAppRestrictBackground()Z
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    .line 451
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getUnrestrictData()Z
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 457
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p0, p0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->isAllowlisted(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hasFlag(II)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private notifyStateChanged(IZ)V
    .locals 4

    .line 376
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "asus.intent.action.SET_UID_INTERFACE"

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.mobilemanager"

    const-string v3, "com.asus.mobilemanager.net.FirewallCommandReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 380
    iget v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppUid:I

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "moduleId"

    .line 381
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    xor-int/lit8 p1, p2, 0x1

    const-string p2, "reject"

    .line 382
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 383
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private parseList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    .line 371
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, ";"

    .line 372
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateAppDataUsageMode(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 360
    iget p2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppFireWallMode:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppFireWallMode:I

    goto :goto_0

    .line 362
    :cond_0
    iget p2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppFireWallMode:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppFireWallMode:I

    :goto_0
    return-void
.end method

.method private updatePrefs(ZZ)V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    .line 389
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 388
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, p1, 0x1

    .line 391
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 392
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 393
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsUseMobile:Z

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 397
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 400
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 401
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 405
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUseWifiSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_3

    .line 406
    iget p2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppFireWallMode:I

    invoke-direct {p0, p2, v2}, Lcom/android/settings/datausage/AppDataUsage;->hasFlag(II)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 408
    :cond_3
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUseMobileSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_4

    .line 409
    iget p2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppFireWallMode:I

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/android/settings/datausage/AppDataUsage;->hasFlag(II)Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method bindData(I)V
    .locals 7

    .line 433
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/net/NetworkCycleDataForUid;

    .line 439
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUid;->getBackgroudUsage()J

    move-result-wide v0

    .line 440
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUid;->getForegroudUsage()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 435
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    move-wide v2, v0

    :goto_1
    add-long v4, v0, v2

    .line 444
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroidx/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppDataUsage"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x157

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 317
    sget p0, Lcom/android/settings/R$xml;->app_data_usage:I

    return p0
.end method

.method getUidDetailProvider()Lcom/android/settingslib/net/UidDetailProvider;
    .locals 1

    .line 332
    new-instance v0, Lcom/android/settingslib/net/UidDetailProvider;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onAllowlistStatusChanged(IZ)V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "app_item"

    .line 141
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-eqz p1, :cond_1

    const-string v1, "network_template"

    .line 142
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 143
    :goto_1
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-eqz p1, :cond_2

    const-string v1, "network_cycles"

    .line 144
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 145
    :goto_2
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    const-string v1, "selected_cycle"

    .line 146
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_3

    :cond_3
    const-wide/16 v1, 0x0

    :goto_3
    iput-wide v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mSelectedCycle:J

    .line 148
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v1, :cond_4

    .line 149
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    .line 150
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 149
    invoke-static {v1, v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    const-string v1, "uid"

    const/4 v3, -0x1

    if-eqz p1, :cond_5

    .line 153
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_4

    .line 154
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :goto_4
    if-ne p1, v3, :cond_6

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_6

    .line 159
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 160
    new-instance v1, Lcom/android/settingslib/AppItem;

    invoke-direct {v1, p1}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 161
    invoke-virtual {v1, p1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    goto :goto_6

    :cond_7
    move p1, v2

    .line 164
    :goto_5
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v1, v1, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 165
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v1, v1, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 168
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppUid:I

    const-string p1, "total_usage"

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroidx/preference/Preference;

    const-string p1, "foreground_usage"

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroidx/preference/Preference;

    const-string p1, "background_usage"

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroidx/preference/Preference;

    const-string p1, "cycle"

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/SpinnerPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    .line 175
    new-instance p1, Lcom/android/settings/datausage/CycleAdapter;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p1, v1, v3, v4}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUidDetailProvider()Lcom/android/settingslib/net/UidDetailProvider;

    move-result-object p1

    .line 179
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    const-string v3, "use_mobile_connection"

    const-string v4, "use_wifi_connection"

    const-string v5, "app_list"

    const-string v6, "restrict_background"

    const-string v7, "app_settings"

    const-string v8, "unrestricted_data_saver"

    const/4 v9, 0x1

    if-lez v1, :cond_f

    .line 180
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 181
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v1, v9}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p1

    .line 182
    iget-object v1, p1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object p1, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 184
    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 185
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 186
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 187
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_7

    .line 189
    :cond_9
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-eqz p1, :cond_a

    .line 191
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    .line 192
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v10, v10, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 191
    invoke-virtual {p1, v1, v2, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 195
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :catch_0
    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 200
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    invoke-virtual {p0, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 202
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUseWifiSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 204
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUseMobileSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 206
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    :goto_7
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 209
    invoke-virtual {p0, v7}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    .line 211
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 212
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 216
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 217
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_b

    move v2, v9

    :cond_c
    if-nez v2, :cond_d

    .line 224
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 225
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    .line 228
    :cond_d
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-le p1, v9, :cond_e

    .line 229
    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroidx/preference/PreferenceCategory;

    .line 230
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x3

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppPrefCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_8

    .line 233
    :cond_e
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_8

    .line 236
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v1, v9}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p1

    .line 238
    iget-object v1, p1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 239
    iget-object p1, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 240
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    .line 242
    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 243
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 244
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 245
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 246
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 247
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_8
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 268
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 269
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 276
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 278
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 279
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    xor-int/2addr p2, v1

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setIsDenylisted(ILjava/lang/String;Z)V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return v1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v0, :cond_1

    .line 283
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, p0, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setIsAllowlisted(ILjava/lang/String;Z)V

    return v1

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUseWifiSwitchPreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    .line 286
    invoke-direct {p0, v1, p2}, Lcom/android/settings/datausage/AppDataUsage;->updateAppDataUsageMode(IZ)V

    .line 287
    invoke-direct {p0, v1, p2}, Lcom/android/settings/datausage/AppDataUsage;->notifyStateChanged(IZ)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return v1

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUseMobileSwitchPreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    .line 291
    iput-boolean p2, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsUseMobile:Z

    const/4 p1, 0x2

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->updateAppDataUsageMode(IZ)V

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->notifyStateChanged(IZ)V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v3, v3, Lcom/android/settingslib/AppItem;->key:I

    .line 306
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package not found = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppDataUsage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 253
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 257
    :cond_0
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 260
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/AppDataUsage;->getAppDataUsageMode(Landroid/content/Context;)V

    .line 261
    iget v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppFireWallMode:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings/datausage/AppDataUsage;->hasFlag(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsUseMobile:Z

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 464
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 466
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    .line 471
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 470
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 473
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping UID because cannot find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppDataUsage"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v0

    .line 477
    :goto_1
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    .line 479
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 481
    invoke-static {v3, p0, p2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 482
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 483
    invoke-virtual {p2, v1}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 484
    invoke-virtual {p2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 485
    invoke-virtual {p2, v0, v0}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 487
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 488
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 489
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    .line 491
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method updatePrefs()V
    .locals 2

    .line 327
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    return-void
.end method
