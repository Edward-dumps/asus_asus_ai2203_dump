.class public Landroidx/core/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mAllowSystemGeneratedContextualActions:Z

.field mBadgeIcon:I

.field mBigContentView:Landroid/widget/RemoteViews;

.field mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

.field mCategory:Ljava/lang/String;

.field mChannelId:Ljava/lang/String;

.field mChronometerCountDown:Z

.field mColor:I

.field mColorized:Z

.field mColorizedSet:Z

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContentView:Landroid/widget/RemoteViews;

.field public mContext:Landroid/content/Context;

.field mExtras:Landroid/os/Bundle;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mGroupAlertBehavior:I

.field mGroupKey:Ljava/lang/String;

.field mGroupSummary:Z

.field mHeadsUpContentView:Landroid/widget/RemoteViews;

.field mInvisibleActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mLocalOnly:Z

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field public mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/Person;",
            ">;"
        }
    .end annotation
.end field

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mPublicVersion:Landroid/app/Notification;

.field mRemoteInputHistory:[Ljava/lang/CharSequence;

.field mSettingsText:Ljava/lang/CharSequence;

.field mShortcutId:Ljava/lang/String;

.field mShowWhen:Z

.field mSilent:Z

.field mSmallIcon:Landroid/graphics/drawable/Icon;

.field mSortKey:Ljava/lang/String;

.field mStyle:Landroidx/core/app/NotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mTimeout:J

.field mUseChronometer:Z

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "channelId"
        }
    .end annotation

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 857
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    const/4 v1, 0x0

    .line 870
    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 875
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 876
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 882
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 886
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 889
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 1073
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 1074
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    .line 1076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 1077
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 1078
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 1079
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 1080
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    return-void
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cs"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p0

    .line 2351
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2352
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private setFlag(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mask",
            "value"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1663
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p2, p0, Landroid/app/Notification;->flags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 1665
    :cond_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p2, p0, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1899
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .line 2346
    new-instance v0, Landroidx/core/app/NotificationCompatBuilder;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompatBuilder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public getBigContentView()Landroid/widget/RemoteViews;
    .locals 0

    .line 2370
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getColor()I
    .locals 0

    .line 2409
    iget p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    return p0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .locals 0

    .line 2362
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1855
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1856
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1858
    :cond_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 0

    .line 2378
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    .line 2398
    iget p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    return p0
.end method

.method public getWhenIfShowing()J
    .locals 2

    .line 2388
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 1629
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setColor(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "argb"
        }
    .end annotation

    .line 1988
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1342
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1222
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1214
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentView"
        }
    .end annotation

    .line 2132
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaults"
        }
    .end annotation

    .line 1654
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 1656
    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1354
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1617
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    return-object p0
.end method

.method public setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ongoing"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1562
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setPriority(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pri"
        }
    .end annotation

    .line 1692
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    return-object p0
.end method

.method public setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 1168
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 1971
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    if-eq v0, p1, :cond_0

    .line 1972
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    if-eqz p1, :cond_0

    .line 1974
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Style;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_0
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tickerText"
        }
    .end annotation

    .line 1391
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 2000
    iput p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    return-object p0
.end method

.method public setWhen(J)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "when"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method
