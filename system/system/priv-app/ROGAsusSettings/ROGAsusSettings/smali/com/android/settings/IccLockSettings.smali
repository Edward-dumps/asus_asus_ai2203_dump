.class public Lcom/android/settings/IccLockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/IccLockSettings$ChangeIccLockPin;,
        Lcom/android/settings/IccLockSettings$SetIccLockEnabled;
    }
.end annotation


# instance fields
.field private mDialogState:I

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings/EditPinPreference;

.field private mPinToggle:Landroidx/preference/SwitchPreference;

.field private mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v0, -0x1

    .line 133
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    .line 139
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 817
    new-instance v0, Lcom/android/settings/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$4;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 833
    new-instance v0, Lcom/android/settings/IccLockSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$5;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/IccLockSettings;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/IccLockSettings;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/IccLockSettings;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/IccLockSettings;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/settings/IccLockSettings;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)I
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->getSlotIndexFromTag(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {p1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object p0

    return-object p0
.end method

.method private createCustomTextToast(Ljava/lang/CharSequence;)V
    .locals 8

    const-string v0, "layout_inflater"

    .line 660
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 661
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "transient_notification"

    const-string v3, "layout"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 662
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "message"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 663
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 666
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 668
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 669
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "config_toastDefaultGravity"

    const-string v7, "integer"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 668
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 670
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 667
    invoke-static {v3, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 671
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v3, v2, 0x7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x7

    if-ne v3, v6, :cond_0

    .line 673
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_0
    const/16 v3, 0x70

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 676
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 678
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 679
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "toast_y_offset"

    const-string v6, "dimen"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 678
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, -0x2

    .line 681
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 682
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x3

    .line 683
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 684
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Animation_Toast"

    const-string v5, "style"

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v2, 0x7e1

    .line 685
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 686
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 687
    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p1, 0x98

    .line 688
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string/jumbo p1, "window"

    .line 692
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 693
    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/IccLockSettings$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/settings/IccLockSettings$3;-><init>(Lcom/android/settings/IccLockSettings;Landroid/view/WindowManager;Landroid/view/View;)V

    const-wide/16 p0, 0x1b58

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 745
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->wrong_pin_code_pukked:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 747
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->wrong_pin_code_one:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-le p1, v1, :cond_2

    .line 749
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$plurals;->wrong_pin_code:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 751
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 750
    invoke-virtual {p0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 753
    :cond_2
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->pin_failed:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSlotIndexFromTag(Ljava/lang/String;)I
    .locals 0

    .line 784
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getTagForSlotId(I)Ljava/lang/String;
    .locals 0

    .line 778
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVisibleSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 5

    .line 791
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 792
    invoke-virtual {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 796
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 798
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 799
    invoke-direct {p0, v2, v3}, Lcom/android/settings/IccLockSettings;->isSubscriptionVisible(Landroid/telephony/CarrierConfigManager;Landroid/telephony/SubscriptionInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 800
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_2
    return-object v1
.end method

.method private iccLockChanged(ZI)V
    .locals 2

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccLockChanged: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 637
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    .line 640
    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->createCustomTextToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 642
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz p1, :cond_2

    .line 643
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_pin_enable_failed:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 644
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 646
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_pin_disable_failed:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 647
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 651
    :goto_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 652
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method private iccPinChanged(ZI)V
    .locals 2

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccPinChanged: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 706
    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->createCustomTextToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->sim_change_succeeded:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 710
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 712
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method private isIccLockEnabled()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 163
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isIccLockEnabled()Z

    move-result p0

    return p0
.end method

.method private isSubscriptionVisible(Landroid/telephony/CarrierConfigManager;Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 810
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "hide_sim_lock_settings_bool"

    .line 814
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "IccLockSettings"

    const-string v0, "resetDialogState()"

    .line 761
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 762
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x8

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private resetDialogState()V
    .locals 1

    const/4 v0, 0x0

    .line 770
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    const/4 v0, 0x2

    .line 771
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const-string v0, ""

    .line 772
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 773
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    const/4 v0, 0x0

    .line 774
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    return-void
.end method

.method private restoreDialogStates(Landroid/os/Bundle;)Z
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    const-string v1, "dialogSubId"

    .line 215
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 221
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 220
    invoke-direct {p0, v2}, Lcom/android/settings/IccLockSettings;->getVisibleSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 225
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 229
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    iput v1, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    .line 230
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    const-string v0, "dialogState"

    .line 231
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const-string v0, "dialogPin"

    .line 232
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    const-string v0, "dialogError"

    .line 233
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    const-string v0, "enableState"

    .line 234
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 237
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x3

    const-string v2, "oldPinCode"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    const-string v0, "newPinCode"

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_0

    .line 239
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private restoreTabFocus(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "currentTab"

    .line 253
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->getVisibleSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    .line 264
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    .line 265
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz p1, :cond_1

    .line 266
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->getTagForSlotId(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private setDialogValues()V
    .locals 7

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDialogValues(): mDialogState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-nez v0, :cond_0

    const-string v0, "setDialogValues mPinDialog is null"

    .line 482
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "sim_pin"

    .line 484
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialogValues mPinDialog = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 487
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "gsm.sim.pin1_count"

    const/4 v2, -0x1

    .line 495
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDialogValues(): sim1AttemptsLeft = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    :cond_1
    const-string v4, "gsm.sim.pin1_count.1"

    .line 500
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDialogValues(): sim2AttemptsLeft = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 505
    :goto_1
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    .line 507
    :goto_2
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v0, 0x3

    if-eq v1, v0, :cond_5

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    const-string v0, ""

    goto/16 :goto_4

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_reenter_new:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_change_pin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 527
    :cond_5
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_enter_new:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_change_pin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 520
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_enter_old:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_pin_attempts:I

    .line 521
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->asus_pin_retry_count_unit:I

    .line 522
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_change_pin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 510
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_enter_pin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_pin_attempts:I

    .line 511
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->asus_pin_retry_count_unit:I

    .line 512
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_8

    .line 515
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_enable_sim_lock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 516
    :cond_8
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->sim_disable_sim_lock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 514
    :goto_3
    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 535
    :goto_4
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 537
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 539
    :cond_9
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showPinDialog()V
    .locals 2

    .line 465
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 470
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    .line 472
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 474
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .line 607
    new-instance v0, Lcom/android/settings/IccLockSettings$SetIccLockEnabled;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/IccLockSettings$SetIccLockEnabled;-><init>(Lcom/android/settings/IccLockSettings;ZLjava/lang/String;Lcom/android/settings/IccLockSettings$1;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 609
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .line 716
    new-instance v0, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;-><init>(Lcom/android/settings/IccLockSettings;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/IccLockSettings$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updatePreferences()V
    .locals 6

    .line 345
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->getVisibleSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 349
    :goto_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 350
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v5

    .line 355
    :goto_2
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    if-eq v3, v1, :cond_3

    .line 356
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    .line 357
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 358
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 359
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 363
    :cond_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v4

    .line 364
    :goto_3
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 366
    :cond_5
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    move v4, v5

    .line 367
    :cond_6
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_7

    .line 370
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 427
    sget p0, Lcom/android/settings/R$string;->help_url_icc_lock:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x38

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 176
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 191
    sget v0, Lcom/android/settings/R$xml;->sim_lock_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "sim_pin"

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const-string v0, "sim_toggle"

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_2

    const-string v0, "dialogState"

    .line 196
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ", subId="

    const-string v2, "IccLockSettings"

    if-eqz v0, :cond_1

    .line 197
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->restoreDialogStates(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: restore dialog for slotId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "currentTab"

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->restoreTabFocus(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: restore focus on slotId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 208
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 275
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v0

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 279
    invoke-direct {p0, v3}, Lcom/android/settings/IccLockSettings;->getVisibleSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 282
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    .line 283
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    .line 285
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const-string v3, "IccLockSettings"

    if-nez v0, :cond_2

    const-string v0, "onCreateView: no sim info"

    .line 292
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 296
    :cond_2
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    if-gez v0, :cond_3

    .line 297
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    .line 298
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView: default slotId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", subId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_5

    .line 303
    sget v0, Lcom/android/settings/R$layout;->icc_lock_tabs:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 304
    sget v3, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 305
    invoke-static {p2, v0, v3, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 306
    invoke-super {p0, p1, v3, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 307
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x1020012

    .line 309
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    const p1, 0x1020013

    .line 310
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabWidget;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabWidget:Landroid/widget/TabWidget;

    const p1, 0x102000a

    .line 311
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mListView:Landroid/widget/ListView;

    .line 313
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 314
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 316
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    .line 317
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p2

    .line 318
    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getTagForSlotId(I)Ljava/lang/String;

    .line 320
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 321
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/android/settings/IccLockSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_1

    .line 329
    :cond_4
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    iget p2, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-direct {p0, p2}, Lcom/android/settings/IccLockSettings;->getTagForSlotId(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-object v0

    .line 333
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 406
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 412
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 420
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "IccLockSettings"

    const-string v1, "onPause()"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 2

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPinEntered(): positiveResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDialogState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void

    .line 550
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 551
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 553
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget p2, Lcom/android/settings/R$string;->sim_bad_pin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 554
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    return-void

    .line 557
    :cond_1
    iget p1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, 0x2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    if-eq p1, v0, :cond_4

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 575
    :cond_2
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 576
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget p2, Lcom/android/settings/R$string;->sim_pins_dont_match:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 577
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 578
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 579
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 581
    :cond_3
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 582
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 569
    :cond_4
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 570
    iput p2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 571
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 572
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 562
    :cond_5
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 563
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 564
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 565
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 566
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 559
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangeIccLockState()V

    :goto_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 592
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 594
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SwitchPreference;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 595
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 596
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 598
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 382
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 386
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 396
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 398
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    const-string v1, "dialogSubId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const-string v1, "dialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 440
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialogPin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    const-string v1, "dialogError"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    const-string v1, "enableState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x3

    const-string v2, "oldPinCode"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    const-string v1, "newPinCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 459
    :goto_0
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz p0, :cond_3

    .line 460
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "currentTab"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 339
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 340
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method
