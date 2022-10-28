.class public Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ContextualCardsFragment.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$GetElderTask;,
        Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$TaskHandler;,
        Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$ScreenOffReceiver;,
        Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static sRestartLoaderNeeded:Z


# instance fields
.field private mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

.field private mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

.field private mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

.field private mGetElderThread:Ljava/lang/Thread;

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field mKeyEventReceiver:Landroid/content/BroadcastReceiver;

.field private mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mTaskHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->resetSession(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mTaskHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private registerKeyEventReceiver()V
    .locals 3

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mKeyEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerScreenOffReceiver()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$ScreenOffReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$ScreenOffReceiver;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private resetSession(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 180
    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->sRestartLoaderNeeded:Z

    .line 181
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->unregisterScreenOffReceiver()V

    .line 182
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/slices/SlicesFeatureProvider;->newUiSession()V

    return-void
.end method

.method private unregisterKeyEventReceiver()V
    .locals 1

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mKeyEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterScreenOffReceiver()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5de

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    .line 80
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/slices/SlicesFeatureProvider;->newUiSession()V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->initLocalBtManager(Landroid/content/Context;)V

    .line 83
    :cond_0
    new-instance v1, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    .line 85
    new-instance p1, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mKeyEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 128
    sget v0, Lcom/android/settings/R$layout;->settings_homepage:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 129
    sget p2, Lcom/android/settings/R$id;->card_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    .line 130
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {p2, v0, v2, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 132
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 133
    new-instance p2, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-direct {p2, p3, p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    .line 135
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 136
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 137
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-virtual {p2, p3}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->setListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V

    .line 138
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    invoke-virtual {p2, p0}, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->setListener(Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;)V

    .line 139
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance p3, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardsAdapter:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-direct {p3, v0}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;)V

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 140
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mCardsContainer:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->unregisterScreenOffReceiver()V

    .line 116
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mGetElderThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 119
    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mGetElderThread:Ljava/lang/Thread;

    .line 121
    :cond_0
    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mTaskHandler:Landroid/os/Handler;

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 90
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->registerScreenOffReceiver()V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->registerKeyEventReceiver()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->sRestartLoaderNeeded:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->loadContextualCards(Landroidx/loader/app/LoaderManager;Z)V

    const/4 v0, 0x0

    .line 95
    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->sRestartLoaderNeeded:Z

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "suggestion_complete_pref"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "toggle_font_size"

    .line 98
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->isSuggestionClosed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$TaskHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$TaskHandler;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mTaskHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$GetElderTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$GetElderTask;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mGetElderThread:Ljava/lang/Thread;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->unregisterKeyEventReceiver()V

    .line 110
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mContextualCardManager:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->onWindowFocusChanged(Z)V

    return-void
.end method
