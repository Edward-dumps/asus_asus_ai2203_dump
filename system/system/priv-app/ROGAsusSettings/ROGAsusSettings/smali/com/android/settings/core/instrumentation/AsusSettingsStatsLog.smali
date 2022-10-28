.class public Lcom/android/settings/core/instrumentation/AsusSettingsStatsLog;
.super Ljava/lang/Object;
.source "AsusSettingsStatsLog.java"


# direct methods
.method public static write(IIIILjava/lang/String;J)V
    .locals 1

    .line 1294
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1295
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1296
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1297
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1298
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1299
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1300
    invoke-virtual {v0, p5, p6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1302
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1303
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public static write(IJILjava/lang/String;I)V
    .locals 1

    .line 1307
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1308
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1309
    invoke-virtual {v0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1310
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/16 p1, 0x110

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    .line 1312
    invoke-virtual {v0, p0, p0}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 1314
    :cond_0
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1315
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1317
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1318
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public static write(ILjava/lang/String;I)V
    .locals 1

    .line 1322
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1323
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1324
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1325
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1327
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1328
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
