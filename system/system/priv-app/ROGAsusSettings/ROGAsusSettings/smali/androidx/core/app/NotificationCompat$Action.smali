.class public Landroidx/core/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$Action$Builder;
    }
.end annotation


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mAllowGeneratedReplies:Z

.field private final mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

.field final mExtras:Landroid/os/Bundle;

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private final mIsContextual:Z

.field private final mRemoteInputs:[Landroidx/core/app/RemoteInput;

.field private final mSemanticAction:I

.field mShowsUserInterface:Z

.field public title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "title",
            "intent",
            "extras",
            "remoteInputs",
            "dataOnlyRemoteInputs",
            "allowGeneratedReplies",
            "semanticAction",
            "showsUserInterface",
            "isContextual"
        }
    .end annotation

    .line 4469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4417
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 4470
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_0

    .line 4471
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4472
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result p1

    iput p1, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    .line 4474
    :cond_0
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 4475
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    goto :goto_0

    .line 4476
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 4477
    iput-object p5, p0, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 4478
    iput-object p6, p0, Landroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 4479
    iput-boolean p7, p0, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 4480
    iput p8, p0, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    .line 4481
    iput-boolean p9, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 4482
    iput-boolean p10, p0, Landroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    return-void
.end method


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 4510
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getAllowGeneratedReplies()Z
    .locals 0

    .line 4525
    iget-boolean p0, p0, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    return p0
.end method

.method public getDataOnlyRemoteInputs()[Landroidx/core/app/RemoteInput;
    .locals 0

    .line 4568
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroidx/core/app/RemoteInput;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 0

    .line 4517
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getIconCompat()Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .line 4499
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    .line 4500
    invoke-static {v1, v2, v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 4502
    :cond_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public getRemoteInputs()[Landroidx/core/app/RemoteInput;
    .locals 0

    .line 4534
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    return-object p0
.end method

.method public getSemanticAction()I
    .locals 0

    .line 4545
    iget p0, p0, Landroidx/core/app/NotificationCompat$Action;->mSemanticAction:I

    return p0
.end method

.method public getShowsUserInterface()Z
    .locals 0

    .line 4576
    iget-boolean p0, p0, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 4506
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isContextual()Z
    .locals 0

    .line 4554
    iget-boolean p0, p0, Landroidx/core/app/NotificationCompat$Action;->mIsContextual:Z

    return p0
.end method
