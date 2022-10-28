.class public Lcom/android/settings/media/MediaOutputIndicatorSlice;
.super Ljava/lang/Object;
.source "MediaOutputIndicatorSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createEmptyIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 80
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 81
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method private getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaOutputIndicatorWorker;

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-object p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 98
    const-class p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 9

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->isVisible()Z

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v4, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v4, p0, v1, v2}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 56
    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ic_settings_bluetooth"

    const-string v6, "drawable"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 59
    invoke-static {v0, v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 62
    iget-object v4, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->media_output_label_title:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    .line 62
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    .line 65
    invoke-interface {p0, v4}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 64
    invoke-static {v4, v0, v7, v3}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 67
    iget-object v4, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v4

    .line 69
    new-instance v5, Landroidx/slice/builders/ListBuilder;

    iget-object v6, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v5, v6, v8, v1, v2}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 70
    invoke-virtual {v5, v4}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 72
    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 73
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->createEmptyIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 74
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 75
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 71
    invoke-virtual {v1, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 86
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_INDICATOR_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method isVisible()Z
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getMediaDevices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getActiveLocalMediaController()Landroid/media/session/MediaController;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 4

    .line 124
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getActiveLocalMediaController()Landroid/media/session/MediaController;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "MediaOutputIndSlice"

    const-string p1, "No active local media controller"

    .line 127
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    .line 132
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    const-string v3, "key_media_session_token"

    .line 134
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 137
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "package_name"

    .line 136
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 131
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.panel.action.CLOSE_PANEL"

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
