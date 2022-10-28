.class public Lcom/android/settings/ResetNetworkConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field mContentView:Landroid/view/View;

.field mEraseEsim:Z

.field mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

.field private mSubId:I

.field private mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public static synthetic $r8$lambda$20eFUV_UqqXYOIZzbuSkUloVzsw(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->lambda$onCreateView$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    .line 213
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$1;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetNetworkConfirm;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->restoreDefaultApn(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/ResetNetworkConfirm;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/ResetNetworkConfirm;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/ResetNetworkConfirm;Landroid/telephony/SubscriptionManager;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->stopMonitorSubscriptionChange(Landroid/telephony/SubscriptionManager;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/ResetNetworkConfirm;Landroid/telephony/SubscriptionManager;I)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ResetNetworkConfirm;->isSubscriptionRemainActive(Landroid/telephony/SubscriptionManager;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->execute_reset_network:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 284
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 1

    .line 257
    new-instance p0, Landroid/app/ProgressDialog;

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 260
    sget v0, Lcom/android/settings/R$string;->main_clear_progress_text:I

    .line 261
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 2

    .line 342
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    if-nez p0, :cond_0

    const-string v0, "ResetNetworkConfirm"

    const-string v1, "No SubscriptionManager"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method private isSubscriptionRemainActive(Landroid/telephony/SubscriptionManager;I)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private restoreDefaultApn(Landroid/content/Context;)V
    .locals 3

    const-string v0, "content://telephony/carriers/restore"

    .line 269
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 271
    iget v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 275
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    .line 276
    invoke-virtual {p0, v0, p1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private startMonitorSubscriptionChange(Landroid/telephony/SubscriptionManager;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 354
    :cond_0
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$2;

    .line 355
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ResetNetworkConfirm$2;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 368
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    .line 369
    invoke-virtual {v0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 368
    invoke-virtual {p1, v0, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method private stopMonitorSubscriptionChange(Landroid/telephony/SubscriptionManager;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    const/4 p1, 0x0

    .line 381
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x54

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 322
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 326
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    const-string v1, "erase_esim"

    .line 328
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    .line 331
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    .line 333
    iget p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    if-ne p1, v0, :cond_1

    return-void

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->startMonitorSubscriptionChange(Landroid/telephony/SubscriptionManager;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 298
    iget-object p2, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    .line 299
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string v0, "no_network_reset"

    .line 298
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 300
    iget-object p3, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    .line 301
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 300
    invoke-static {p3, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 302
    sget p0, Lcom/android/settings/R$layout;->network_reset_disallowed_screen:I

    invoke-virtual {p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 304
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    iget-object p3, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    .line 305
    invoke-virtual {p1, v0, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/ResetNetworkConfirm$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/ResetNetworkConfirm$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    .line 306
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 308
    new-instance p1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 310
    :cond_1
    sget p2, Lcom/android/settings/R$layout;->reset_network_confirm:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 311
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    const/4 p2, 0x1

    .line 314
    iget-object p3, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setPersistCollapsed(ZLandroid/view/View;Z)V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->setSubtitle()V

    .line 317
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 387
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 394
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 396
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ResetNetworkConfirm;->stopMonitorSubscriptionChange(Landroid/telephony/SubscriptionManager;)V

    .line 397
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method p2pFactoryReset(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo p0, "wifip2p"

    .line 245
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->factoryReset(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method setSubtitle()V
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->reset_network_confirm:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->reset_network_final_desc_esim:I

    .line 291
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
