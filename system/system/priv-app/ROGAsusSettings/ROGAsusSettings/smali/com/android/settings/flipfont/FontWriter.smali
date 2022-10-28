.class public Lcom/android/settings/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static DEBUG:Z = false


# instance fields
.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 29
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 136
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 140
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 142
    new-instance v0, Ljava/io/File;

    aget-object v1, p1, p2

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p2

    :cond_1
    return p2
.end method


# virtual methods
.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 164
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 166
    invoke-virtual {v4, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 168
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 169
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 174
    :goto_0
    invoke-virtual {p2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_0

    .line 175
    invoke-virtual {v4, v5, v3, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 178
    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 179
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 198
    iget-object p0, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_4

    .line 199
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v3

    .line 187
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-nez v5, :cond_1

    .line 190
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 192
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    .line 197
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 198
    :cond_2
    iget-object p0, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_3

    .line 199
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_3
    move v3, v2

    .line 206
    :catch_2
    :cond_4
    :goto_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-nez p1, :cond_5

    .line 209
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2

    :goto_3
    if-eqz p2, :cond_6

    .line 197
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 198
    :cond_6
    iget-object p0, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_7

    .line 199
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 203
    :catch_3
    :cond_7
    throw p1
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 54
    sget-boolean p0, Lcom/android/settings/flipfont/FontWriter;->DEBUG:Z

    const-string v0, "FlipFont"

    if-eqz p0, :cond_0

    const-string p0, "createFontDirectory"

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    if-eqz p1, :cond_2

    if-nez p0, :cond_2

    .line 60
    sget-boolean v1, Lcom/android/settings/flipfont/FontWriter;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Current User == 0"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    const-string v1, "activity"

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 64
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    .line 65
    sget-boolean p1, Lcom/android/settings/flipfont/FontWriter;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current User From Activity Manager = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    :cond_2
    new-instance p1, Ljava/io/File;

    const-string v1, "/data/system/mt_fonts/"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 73
    sget-boolean v2, Lcom/android/settings/flipfont/FontWriter;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "MT_FONT_PATH  does not exist "

    .line 74
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 76
    invoke-virtual {p1, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 77
    invoke-virtual {p1, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 78
    invoke-virtual {p1, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 80
    :cond_4
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_6

    .line 83
    sget-boolean p0, Lcom/android/settings/flipfont/FontWriter;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "MT_FONTS_PATH + currentUser does not exist"

    .line 84
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 86
    invoke-virtual {p1, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 87
    invoke-virtual {p1, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 88
    invoke-virtual {p1, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 90
    :cond_6
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    const-string p1, "Make directory with the fontName"

    .line 94
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    const-string p1, "after set Executable"

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    :try_start_0
    const-string v1, "activity"

    .line 112
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 113
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/mt_fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 124
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 126
    aget-object v2, v0, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "flipfont_settings_path"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "flipfont_settings_name"

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
