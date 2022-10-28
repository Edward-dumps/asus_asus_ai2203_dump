.class Lcom/android/settings/AsusTransferDataService$IncomingHandler;
.super Landroid/os/Handler;
.source "AsusTransferDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AsusTransferDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AsusTransferDataService;


# direct methods
.method constructor <init>(Lcom/android/settings/AsusTransferDataService;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const-string v0, "/data/cache/AsusBackup/5566/_full/obb/"

    const-string v1, "bytesTransferred"

    .line 137
    sget-boolean v2, Landroid/os/Build$FEATURES;->ENABLE_ASUS_DATA_TRANSFER:Z

    if-nez v2, :cond_0

    return-void

    .line 140
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_8

    const-string v3, "data"

    const-string v4, "string"

    const-string v5, "com.tencent.mm"

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const-string v9, "/data/cache/AsusBackup/5566/_full/"

    const/4 v10, 0x0

    const-string v11, "pkgName"

    const-string v12, "AsusTransferDataService"

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 425
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected MSG: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 412
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {p0, p1}, Lcom/android/settings/AsusTransferDataService;->access$1700(Lcom/android/settings/AsusTransferDataService;Landroid/os/Message;)V

    goto/16 :goto_4

    .line 396
    :pswitch_1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 397
    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 398
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "device_name"

    .line 399
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {p0}, Lcom/android/settings/AsusTransferDataService;->access$1600(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 401
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    .line 403
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 388
    :pswitch_2
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {p0, v8}, Lcom/android/settings/AsusTransferDataService;->access$1000(Lcom/android/settings/AsusTransferDataService;I)V

    .line 389
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p0

    .line 391
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 319
    :pswitch_3
    :try_start_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 320
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-virtual {v2}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "note_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-virtual {v6}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    move-object p0, v1

    goto :goto_0

    .line 322
    :cond_1
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 323
    :goto_0
    iget v2, p1, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 324
    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 325
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 326
    invoke-virtual {v2, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 329
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    goto/16 :goto_4

    :pswitch_4
    :try_start_3
    const-string v0, "MSG_GET_APP_NAME!"

    .line 301
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-virtual {v2}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-virtual {v6}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, v1

    goto :goto_1

    .line 305
    :cond_2
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 306
    :goto_1
    iget v2, p1, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 307
    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 308
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 309
    invoke-virtual {v2, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 312
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception p0

    .line 314
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    goto/16 :goto_4

    .line 357
    :pswitch_5
    :try_start_4
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings/AsusTransferDataService;->access$914(Lcom/android/settings/AsusTransferDataService;J)J

    .line 358
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v2}, Lcom/android/settings/AsusTransferDataService;->access$1200(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 363
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/android/settings/AsusTransferDataService;->access$1202(Lcom/android/settings/AsusTransferDataService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 364
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 365
    iput v10, v2, Landroid/os/Message;->arg1:I

    const/4 v3, 0x6

    .line 366
    iput v3, v2, Landroid/os/Message;->what:I

    .line 367
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 368
    invoke-virtual {v3, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 370
    iget-object v3, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    iget-object v3, v3, Lcom/android/settings/AsusTransferDataService;->mReplyToRestore:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 373
    :cond_3
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    iget-object v2, v2, Lcom/android/settings/AsusTransferDataService;->mReplyToRestore:Landroid/os/Messenger;

    if-eqz v2, :cond_8

    .line 374
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 375
    iget p1, p1, Landroid/os/Message;->what:I

    iput p1, v2, Landroid/os/Message;->what:I

    .line 376
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 377
    invoke-virtual {p1, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v0}, Lcom/android/settings/AsusTransferDataService;->access$900(Lcom/android/settings/AsusTransferDataService;)J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 379
    invoke-virtual {v2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 380
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->mReplyToRestore:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception p0

    .line 383
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 336
    :pswitch_6
    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v1}, Lcom/android/settings/AsusTransferDataService;->access$800(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 338
    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/android/settings/AsusTransferDataService;->access$802(Lcom/android/settings/AsusTransferDataService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 339
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 340
    iput v10, v1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x4

    .line 341
    iput v2, v1, Landroid/os/Message;->what:I

    .line 342
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 343
    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 345
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 348
    :cond_4
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {p0}, Lcom/android/settings/AsusTransferDataService;->access$600(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 349
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception p0

    .line 352
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 288
    :pswitch_7
    :try_start_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 289
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 290
    iput v10, p0, Landroid/os/Message;->arg1:I

    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "version"

    const/4 v2, 0x5

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 294
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_4

    :catch_6
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    goto/16 :goto_4

    .line 266
    :pswitch_8
    :try_start_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-virtual {v2}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "storagestats"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 269
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v2, v3, v1, p0}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object p0

    .line 270
    iget v2, p1, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 271
    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 272
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 273
    invoke-virtual {v2, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dataByte"

    .line 274
    iget-wide v3, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    iget-wide v5, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 275
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 281
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_4

    :catch_7
    move-exception p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    goto/16 :goto_4

    :pswitch_9
    const-string v0, "MSG_MOVE_TO_INTERNAL!"

    .line 258
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    .line 260
    invoke-static {p0}, Lcom/android/settings/AsusTransferDataService;->access$1400(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-static {v0, p0, v9, p1}, Lcom/android/settings/AsusTransferDataService;->access$1500(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_4

    :pswitch_a
    const-string v0, "MSG_MOVE_TO_EXTERNAL!"

    .line 251
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    .line 254
    invoke-static {p0}, Lcom/android/settings/AsusTransferDataService;->access$1400(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/AsusTransferDataService;->access$1500(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_4

    :pswitch_b
    :try_start_8
    const-string v0, "MSG_RESET_BACKUPMANAGER!"

    .line 232
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 236
    :goto_2
    array-length v2, v1

    if-ge v10, v2, :cond_5

    .line 237
    new-instance v2, Ljava/io/File;

    aget-object v3, v1, v10

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 240
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v0}, Lcom/android/settings/AsusTransferDataService;->access$000(Lcom/android/settings/AsusTransferDataService;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/settings/AsusTransferDataService;->access$602(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 243
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {p0}, Lcom/android/settings/AsusTransferDataService;->access$1300(Lcom/android/settings/AsusTransferDataService;)I

    move-result p0

    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 244
    iget p0, p1, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->what:I

    .line 245
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_4

    :catch_8
    move-exception p0

    .line 247
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 214
    :pswitch_c
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FINISHED_RESTORE_PACKAGE!"

    .line 215
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v2}, Lcom/android/settings/AsusTransferDataService;->access$000(Lcom/android/settings/AsusTransferDataService;)V

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/AsusTransferDataService;->deleteFileOrDirectory(Ljava/lang/String;)V

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/sdcard/Android/obb/"

    invoke-static {v1, v2}, Lcom/android/settings/AsusTransferDataService;->copyFileOrDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {v0}, Lcom/android/settings/AsusTransferDataService;->deleteFileOrDirectory(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/AsusTransferDataService;->mReplyToRestore:Landroid/os/Messenger;

    .line 223
    invoke-static {v0, v6, v7}, Lcom/android/settings/AsusTransferDataService;->access$902(Lcom/android/settings/AsusTransferDataService;J)J

    .line 224
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/android/settings/AsusTransferDataService;->access$1202(Lcom/android/settings/AsusTransferDataService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 225
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_4

    :catch_9
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_d
    :try_start_a
    const-string v0, "MSG_RESTORE_PACKAGE!"

    .line 203
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v0, v6, v7}, Lcom/android/settings/AsusTransferDataService;->access$902(Lcom/android/settings/AsusTransferDataService;J)J

    .line 205
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    const v1, 0x927c0

    invoke-static {v0, v1}, Lcom/android/settings/AsusTransferDataService;->access$1000(Lcom/android/settings/AsusTransferDataService;I)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    iget-object v2, v2, Lcom/android/settings/AsusTransferDataService;->mMessenger:Landroid/os/Messenger;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/AsusTransferDataService;->access$1100(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I

    .line 207
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService;->mReplyToRestore:Landroid/os/Messenger;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_4

    :catch_a
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_e
    :try_start_b
    const-string v0, "FINISHED_BACKUP_PACKAGE!"

    .line 189
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/AsusTransferDataService;->access$602(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v0}, Lcom/android/settings/AsusTransferDataService;->access$600(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v0}, Lcom/android/settings/AsusTransferDataService;->access$000(Lcom/android/settings/AsusTransferDataService;)V

    .line 194
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 195
    invoke-static {v8}, Lcom/android/settings/AsusTransferDataService;->access$702(I)I

    .line 196
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/settings/AsusTransferDataService;->access$802(Lcom/android/settings/AsusTransferDataService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_4

    :catch_b
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_f
    :try_start_c
    const-string v0, "MSG_FULL_BACKUP_PACKAGE!"

    .line 177
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 180
    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    const v2, 0x1b7740

    invoke-static {v1, v2}, Lcom/android/settings/AsusTransferDataService;->access$400(Lcom/android/settings/AsusTransferDataService;I)V

    .line 182
    :cond_7
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService;->mMessenger:Landroid/os/Messenger;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {p0, v0, v1, p1}, Lcom/android/settings/AsusTransferDataService;->access$500(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_4

    :catch_c
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 154
    :pswitch_10
    :try_start_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v2, v1}, Lcom/android/settings/AsusTransferDataService;->access$200(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 157
    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 158
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_3

    :catch_d
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_3
    :pswitch_11
    :try_start_e
    const-string v0, "MSG_BACKUP_PACKAGE!"

    .line 164
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService;->mMessenger:Landroid/os/Messenger;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {p0, v1, v2, v3}, Lcom/android/settings/AsusTransferDataService;->access$300(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I

    move-result p0

    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 168
    iget p0, p1, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->what:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 170
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_4

    :catch_e
    move-exception p0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_4

    .line 143
    :pswitch_12
    :try_start_f
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v0}, Lcom/android/settings/AsusTransferDataService;->access$000(Lcom/android/settings/AsusTransferDataService;)V

    .line 144
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 145
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$IncomingHandler;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {p0}, Lcom/android/settings/AsusTransferDataService;->access$100(Lcom/android/settings/AsusTransferDataService;)I

    move-result p0

    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 146
    iget p0, p1, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->what:I

    .line 147
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_4

    :catch_f
    move-exception p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
