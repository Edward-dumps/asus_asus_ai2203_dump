.class Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$TaskHandler;
.super Landroid/os/Handler;
.source "ContextualCardsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$1;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$TaskHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 236
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "recommend_elder"

    .line 239
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 241
    :goto_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 243
    :cond_1
    invoke-static {p0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->setElder(I)V

    :goto_1
    return-void
.end method
