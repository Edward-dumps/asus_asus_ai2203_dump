.class Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$GetElderTask;
.super Ljava/lang/Object;
.source "ContextualCardsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetElderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;Landroid/content/Context;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$GetElderTask;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$GetElderTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "recommend_gender"

    const-string v1, "recommend_elder"

    .line 258
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "content://com.asus.gallery.provider.UserProfileProvider/user_profile"

    .line 259
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$GetElderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 265
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 267
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 271
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 275
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    .line 279
    iput v3, v2, Landroid/os/Message;->what:I

    .line 280
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 281
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$GetElderTask;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->access$300(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 284
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$GetElderTask;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->access$300(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
