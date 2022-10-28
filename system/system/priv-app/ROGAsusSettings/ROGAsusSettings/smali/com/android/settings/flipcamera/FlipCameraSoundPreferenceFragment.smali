.class public Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FlipCameraSoundPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private flipListview:Landroid/widget/ListView;

.field private flip_entries:[Ljava/lang/String;

.field private flip_values:[Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mHasInit:Z

.field private mMotorServiceConnection:Landroid/content/ServiceConnection;

.field private mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

.field private mPlayingSound:I

.field private mPreviewButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mHasInit:Z

    .line 48
    iput v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPlayingSound:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

    .line 238
    new-instance v0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$5;-><init>(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mMotorServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Landroid/app/Activity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Lcom/asus/motorservice/IMotorService;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;Lcom/asus/motorservice/IMotorService;)Lcom/asus/motorservice/IMotorService;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPlayingSound:I

    return p0
.end method

.method static synthetic access$208(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPlayingSound:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPlayingSound:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPlayingSound:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPlayingSound:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Landroid/widget/ListView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flipListview:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Landroid/widget/Button;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPreviewButton:Landroid/widget/Button;

    return-object p0
.end method

.method private bindToMotorService()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

    const-string v1, "FlipCameraSoundPreference"

    if-eqz v0, :cond_0

    const-string v0, "bindToMotorService(): Already bind to MotorService!"

    .line 228
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "bindToMotorService()"

    .line 230
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.asus.motorservice.MotorService"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.asus.motorservice"

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mMotorServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getProviderValue(Landroid/content/Context;)I
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "flip_camera_sound"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private setListviewSetPosition(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flip_entries:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flip_values:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flipListview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flipListview:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 171
    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setProviderValue(Landroid/content/Context;I)V
    .locals 1

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "flip_camera_sound"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPreviewButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 189
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPreviewButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->asus_flip_camera_sound_previewing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mMotorServiceInterface:Lcom/asus/motorservice/IMotorService;

    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/asus/motorservice/IMotorService;->rotateMotorWithMode(Ljava/lang/String;I)V

    .line 192
    iget p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPlayingSound:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPlayingSound:I

    .line 193
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPreviewButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$3;-><init>(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)V

    const-wide/16 v1, 0x514

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPreviewButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$4;-><init>(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlipCameraSoundPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mActivity:Landroid/app/Activity;

    .line 60
    sget v0, Lcom/android/settings/R$string;->asus_flip_camera_sound:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 61
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$array;->flip_camera_sound_entries:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flip_entries:[Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$array;->flip_camera_sound_values:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flip_values:[Ljava/lang/String;

    .line 71
    sget p3, Lcom/android/settings/R$layout;->flip_camera_sound_listview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flip_entries:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$layout;->asus_simple_list_item_single_choice:I

    const v2, 0x1020014

    invoke-direct {p3, v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object p3, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->adapter:Landroid/widget/ArrayAdapter;

    .line 78
    sget p2, Lcom/android/settings/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flipListview:Landroid/widget/ListView;

    .line 79
    iget-object p3, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object p2, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flipListview:Landroid/widget/ListView;

    new-instance p3, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;

    invoke-direct {p3, p0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;-><init>(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    iget-object p2, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->getProviderValue(Landroid/content/Context;)I

    move-result p2

    .line 107
    iget-object p3, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flip_entries:[Ljava/lang/String;

    array-length v0, p3

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    array-length p2, p3

    sub-int/2addr p2, v1

    .line 108
    :cond_0
    iget-object p3, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flip_values:[Ljava/lang/String;

    aget-object p2, p3, p2

    .line 109
    invoke-direct {p0, p2}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->setListviewSetPosition(Ljava/lang/String;)V

    .line 112
    sget p2, Lcom/android/settings/R$id;->preview_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mPreviewButton:Landroid/widget/Button;

    if-eqz p2, :cond_1

    .line 114
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->bindToMotorService()V

    .line 120
    iget-object p2, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->flipListview:Landroid/widget/ListView;

    new-instance p3, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$2;

    invoke-direct {p3, p0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$2;-><init>(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 151
    iput-boolean v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mHasInit:Z

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->mMotorServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 158
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method
