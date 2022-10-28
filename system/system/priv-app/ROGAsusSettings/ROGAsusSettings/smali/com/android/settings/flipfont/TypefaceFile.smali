.class public Lcom/android/settings/flipfont/TypefaceFile;
.super Ljava/lang/Object;
.source "TypefaceFile.java"


# instance fields
.field private droidName:Ljava/lang/String;

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceFile;->fileName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceFile;->droidName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDroidName()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/flipfont/TypefaceFile;->droidName:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settings/flipfont/TypefaceFile;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public setDroidName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settings/flipfont/TypefaceFile;->droidName:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/settings/flipfont/TypefaceFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nDroidname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/flipfont/TypefaceFile;->droidName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
