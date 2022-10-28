.class public Lcom/android/settings/display/StyleSystemColorPreferenceFragment;
.super Lcom/android/settings/display/PreviewLayoutPreferenceFragment;
.source "StyleSystemColorPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COLOR_OVERLAY:[I

.field private static final DRAWABLE_COLOR_OVERLAY:[I

.field private static final OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private applyBt:Landroid/widget/Button;

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRb1:Landroid/widget/RadioButton;

.field private mRb2:Landroid/widget/RadioButton;

.field private mRb3:Landroid/widget/RadioButton;

.field private mRb4:Landroid/widget/RadioButton;

.field private mRb5:Landroid/widget/RadioButton;

.field private mRb6:Landroid/widget/RadioButton;

.field private mRb7:Landroid/widget/RadioButton;

.field private mRb8:Landroid/widget/RadioButton;

.field private mRgDown:Landroid/widget/RadioGroup;

.field private mRgUp:Landroid/widget/RadioGroup;

.field private mSampleContent:Landroid/widget/ImageView;

.field private mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private pkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recentId:I

.field private selectedPkg:Ljava/lang/String;

.field private themeService:Lcom/asus/themeservice/IThemeService;


# direct methods
.method public static synthetic $r8$lambda$-QQRf5ZS5yZy6uoeYSxGL5sZt2k(Landroid/content/om/OverlayInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->lambda$static$0(Landroid/content/om/OverlayInfo;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 73
    const-class v0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->TAG:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/display/StyleSystemColorPreferenceFragment$$ExternalSyntheticLambda0;

    .line 83
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    const/16 v0, 0x9

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 110
    sget v4, Lcom/android/settings/R$color;->accent_color_blue_overlay_color:I

    const/4 v5, 0x1

    aput v4, v1, v5

    sget v4, Lcom/android/settings/R$color;->accent_color_cinnamon_overlay_color:I

    const/4 v6, 0x2

    aput v4, v1, v6

    sget v4, Lcom/android/settings/R$color;->accent_color_black_overlay_color:I

    const/4 v7, 0x3

    aput v4, v1, v7

    sget v4, Lcom/android/settings/R$color;->accent_color_green_overlay_color:I

    const/4 v8, 0x4

    aput v4, v1, v8

    sget v4, Lcom/android/settings/R$color;->accent_color_ocean_overlay_color:I

    const/4 v9, 0x5

    aput v4, v1, v9

    sget v4, Lcom/android/settings/R$color;->accent_color_space_overlay_color:I

    const/4 v10, 0x6

    aput v4, v1, v10

    sget v4, Lcom/android/settings/R$color;->accent_color_orchid_overlay_color:I

    const/4 v11, 0x7

    aput v4, v1, v11

    sget v4, Lcom/android/settings/R$color;->accent_color_purple_overlay_color:I

    const/16 v12, 0x8

    aput v4, v1, v12

    sput-object v1, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->COLOR_OVERLAY:[I

    new-array v0, v0, [I

    aput v3, v0, v2

    .line 122
    sget v1, Lcom/android/settings/R$drawable;->preview_sample_system_color_default:I

    aput v1, v0, v5

    sget v1, Lcom/android/settings/R$drawable;->preview_sample_system_color_cinnamon:I

    aput v1, v0, v6

    sget v1, Lcom/android/settings/R$drawable;->preview_sample_system_color_black:I

    aput v1, v0, v7

    sget v1, Lcom/android/settings/R$drawable;->preview_sample_system_color_green:I

    aput v1, v0, v8

    sget v1, Lcom/android/settings/R$drawable;->preview_sample_system_color_ocean:I

    aput v1, v0, v9

    sget v1, Lcom/android/settings/R$drawable;->preview_sample_system_color_space:I

    aput v1, v0, v10

    sget v1, Lcom/android/settings/R$drawable;->preview_sample_system_color_orchid:I

    aput v1, v0, v11

    sget v1, Lcom/android/settings/R$drawable;->preview_sample_system_color_purple:I

    aput v1, v0, v12

    sput-object v0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->DRAWABLE_COLOR_OVERLAY:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    .line 102
    iput v0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->themeService:Lcom/asus/themeservice/IThemeService;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->pkgs:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->labels:Ljava/util/List;

    .line 406
    new-instance v0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment$1;-><init>(Lcom/android/settings/display/StyleSystemColorPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/display/StyleSystemColorPreferenceFragment;Lcom/asus/themeservice/IThemeService;)Lcom/asus/themeservice/IThemeService;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->themeService:Lcom/asus/themeservice/IThemeService;

    return-object p1
.end method

.method private getColorValueList()V
    .locals 6

    const-string v0, "package_device_default"

    .line 362
    iput-object v0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->selectedPkg:Ljava/lang/String;

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->overlay_option_device_default:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->pkgs:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->selectedPkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->labels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-direct {p0}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->getOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    .line 370
    iget-object v2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->pkgs:Ljava/util/List;

    iget-object v3, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->labels:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 373
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 375
    :catch_0
    iget-object v2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->labels:Ljava/util/List;

    iget-object v3, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :goto_1
    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->pkgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->selectedPkg:Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getIdFromPkg(Ljava/lang/String;)I
    .locals 1

    const-string p0, "package_device_default"

    .line 309
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "com.android.theme.color.cinnamon"

    .line 311
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string p0, "com.android.theme.color.black"

    .line 313
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string p0, "com.android.theme.color.green"

    .line 315
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-string p0, "com.android.theme.color.ocean"

    .line 317
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-string p0, "com.android.theme.color.space"

    .line 319
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-string p0, "com.android.theme.color.orchid"

    .line 321
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-string p0, "com.android.theme.color.purple"

    .line 323
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    return v0
.end method

.method private getOverlayInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v1, "android"

    const/4 v2, 0x0

    .line 347
    invoke-interface {p0, v1, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 348
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    const-string v2, "android.theme.customization.accent_color"

    .line 349
    iget-object v3, v1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :cond_1
    sget-object p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 354
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static synthetic lambda$static$0(Landroid/content/om/OverlayInfo;)I
    .locals 0

    .line 83
    iget p0, p0, Landroid/content/om/OverlayInfo;->priority:I

    return p0
.end method


# virtual methods
.method bindThemeService()V
    .locals 5

    .line 386
    iget-object v0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 388
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.asus.themeservice"

    const-string v4, "com.asus.themeservice.ThemeService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 390
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 392
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 394
    :cond_0
    sget-object p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v0, "bindThemeService is failed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected commit()V
    .locals 4

    .line 239
    :try_start_0
    iget v0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 240
    :cond_0
    sget-object v1, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemOverlay to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->themeService:Lcom/asus/themeservice/IThemeService;

    if-eqz p0, :cond_1

    .line 243
    invoke-interface {p0, v0}, Lcom/asus/themeservice/IThemeService;->setSystemOverlay(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 246
    sget-object v0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v1, "setSystemOverlay fail"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 252
    sget p0, Lcom/android/settings/R$string;->display_style_theme_color:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x154

    return p0
.end method

.method protected getPreviewItemResIds()I
    .locals 0

    .line 146
    sget p0, Lcom/android/settings/R$layout;->style_preview_item_theme_color:I

    return p0
.end method

.method protected getPreviewSampleResIds()I
    .locals 0

    .line 136
    sget p0, Lcom/android/settings/R$layout;->style_preview_sample_color:I

    return p0
.end method

.method protected getPreviewTitleIds()I
    .locals 0

    .line 141
    sget p0, Lcom/android/settings/R$string;->display_style_color_hint_title:I

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 265
    sget v0, Lcom/android/settings/R$id;->radio_1:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 266
    iput p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintPreview(I)V

    .line 268
    iget p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintButton(I)V

    .line 269
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgDown:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->clearCheck()V

    goto/16 :goto_0

    .line 270
    :cond_0
    sget v0, Lcom/android/settings/R$id;->radio_2:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 271
    iput p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintPreview(I)V

    .line 273
    iget p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintButton(I)V

    .line 274
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgDown:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->clearCheck()V

    goto/16 :goto_0

    .line 275
    :cond_1
    sget v0, Lcom/android/settings/R$id;->radio_3:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    .line 276
    iput p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintPreview(I)V

    .line 278
    iget p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintButton(I)V

    .line 279
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgDown:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->clearCheck()V

    goto :goto_0

    .line 280
    :cond_2
    sget v0, Lcom/android/settings/R$id;->radio_4:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    .line 281
    iput p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintPreview(I)V

    .line 283
    iget p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintButton(I)V

    .line 284
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgDown:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->clearCheck()V

    goto :goto_0

    .line 285
    :cond_3
    sget v0, Lcom/android/settings/R$id;->radio_5:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    .line 286
    iput p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintPreview(I)V

    .line 288
    iget p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintButton(I)V

    .line 289
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgUp:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->clearCheck()V

    goto :goto_0

    .line 290
    :cond_4
    sget v0, Lcom/android/settings/R$id;->radio_6:I

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    .line 291
    iput p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintPreview(I)V

    .line 293
    iget p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintButton(I)V

    .line 294
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgUp:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->clearCheck()V

    goto :goto_0

    .line 295
    :cond_5
    sget v0, Lcom/android/settings/R$id;->radio_7:I

    if-ne p1, v0, :cond_6

    const/4 p1, 0x7

    .line 296
    iput p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintPreview(I)V

    .line 298
    iget p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintButton(I)V

    .line 299
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgUp:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->clearCheck()V

    goto :goto_0

    .line 300
    :cond_6
    sget v0, Lcom/android/settings/R$id;->radio_8:I

    if-ne p1, v0, :cond_7

    const/16 p1, 0x8

    .line 301
    iput p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintPreview(I)V

    .line 303
    iget p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintButton(I)V

    .line 304
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgUp:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->clearCheck()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->display_style_theme_color:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 156
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 157
    iget-object p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez p1, :cond_0

    const-string p1, "overlay"

    .line 159
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->bindThemeService()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->getColorValueList()V

    .line 165
    iget-object p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->selectedPkg:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->getIdFromPkg(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 181
    sget p2, Lcom/android/settings/R$id;->button_apply:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->applyBt:Landroid/widget/Button;

    .line 182
    sget p2, Lcom/android/settings/R$id;->preview_sample_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mSampleContent:Landroid/widget/ImageView;

    .line 183
    iget p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    invoke-virtual {p0, p2}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->tintPreview(I)V

    .line 185
    sget p2, Lcom/android/settings/R$id;->radiogroup_up:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgUp:Landroid/widget/RadioGroup;

    .line 186
    sget p2, Lcom/android/settings/R$id;->radiogroup_down:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgDown:Landroid/widget/RadioGroup;

    .line 188
    iget-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgUp:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 189
    iget-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRgDown:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 191
    sget p2, Lcom/android/settings/R$id;->radio_1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb1:Landroid/widget/RadioButton;

    .line 192
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb1:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->toggle()V

    .line 195
    :cond_0
    sget p2, Lcom/android/settings/R$id;->radio_2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb2:Landroid/widget/RadioButton;

    .line 196
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb2:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->toggle()V

    .line 199
    :cond_1
    sget p2, Lcom/android/settings/R$id;->radio_3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb3:Landroid/widget/RadioButton;

    .line 200
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb3:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->toggle()V

    .line 203
    :cond_2
    sget p2, Lcom/android/settings/R$id;->radio_4:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb4:Landroid/widget/RadioButton;

    .line 204
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb4:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->toggle()V

    .line 207
    :cond_3
    sget p2, Lcom/android/settings/R$id;->radio_5:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb5:Landroid/widget/RadioButton;

    .line 208
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    const/4 p3, 0x5

    if-ne p2, p3, :cond_4

    iget-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb5:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->toggle()V

    .line 211
    :cond_4
    sget p2, Lcom/android/settings/R$id;->radio_6:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb6:Landroid/widget/RadioButton;

    .line 212
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_5

    iget-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb6:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->toggle()V

    .line 215
    :cond_5
    sget p2, Lcom/android/settings/R$id;->radio_7:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb7:Landroid/widget/RadioButton;

    .line 216
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    const/4 p3, 0x7

    if-ne p2, p3, :cond_6

    iget-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb7:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->toggle()V

    .line 219
    :cond_6
    sget p2, Lcom/android/settings/R$id;->radio_8:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb8:Landroid/widget/RadioButton;

    .line 220
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget p2, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->recentId:I

    const/16 p3, 0x8

    if-ne p2, p3, :cond_7

    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mRb8:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->toggle()V

    :cond_7
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->unbindThemeService()V

    .line 172
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 228
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 231
    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, p2, p1, v0}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setPersistCollapsed(ZLandroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public tintButton(I)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->applyBt:Landroid/widget/Button;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    sget-object v1, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->COLOR_OVERLAY:[I

    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    aget p1, v1, p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 339
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tintPreview(I)V
    .locals 1

    .line 331
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mSampleContent:Landroid/widget/ImageView;

    sget-object v0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->DRAWABLE_COLOR_OVERLAY:[I

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method unbindThemeService()V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 401
    iget-object p0, p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 402
    sget-object p0, Lcom/android/settings/display/StyleSystemColorPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v0, "com.asus.themeservice unbound."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
