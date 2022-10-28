.class public abstract Lcom/android/modules/utils/BasicShellCommandHandler;
.super Ljava/lang/Object;
.source "BasicShellCommandHandler.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final TAG:Ljava/lang/String; = "ShellCommand"


# instance fields
.field private mArgPos:I

.field private mArgs:[Ljava/lang/String;

.field private mCmd:Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mErr:Ljava/io/FileDescriptor;

.field private mErrPrintWriter:Ljava/io/PrintWriter;

.field private mFileErr:Ljava/io/FileOutputStream;

.field private mFileIn:Ljava/io/FileInputStream;

.field private mFileOut:Ljava/io/FileOutputStream;

.field private mIn:Ljava/io/FileDescriptor;

.field private mInputStream:Ljava/io/InputStream;

.field private mOut:Ljava/io/FileDescriptor;

.field private mOutPrintWriter:Ljava/io/PrintWriter;

.field private mTarget:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 78
    array-length v1, p5

    if-lez v1, :cond_0

    .line 79
    aget-object v0, p5, v0

    const/4 v1, 0x1

    move v8, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v8, v0

    move-object v0, v1

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 85
    invoke-virtual/range {v2 .. v8}, Lcom/android/modules/utils/BasicShellCommandHandler;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V

    .line 86
    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    const/4 p1, -0x1

    .line 97
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->onCommand(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object p2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz p2, :cond_1

    .line 111
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 113
    :cond_1
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz p0, :cond_3

    .line 114
    :goto_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 104
    :try_start_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p3

    .line 105
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 106
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Exception occurred while executing \'"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\':"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    iget-object p2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz p2, :cond_2

    .line 111
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 113
    :cond_2
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return p1

    :catchall_1
    move-exception p1

    .line 110
    iget-object p2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz p2, :cond_4

    .line 111
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 113
    :cond_4
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz p0, :cond_5

    .line 114
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 117
    :cond_5
    throw p1
.end method

.method public getAllArgs()[Ljava/lang/String;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public getBufferedInputStream()Ljava/io/InputStream;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    .line 203
    :cond_0
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public getErrFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getErrPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawErrorStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    .line 176
    :cond_1
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public getInFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getNextArg()Ljava/lang/String;
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 246
    iput-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    .line 248
    :cond_0
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 249
    iput v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    aget-object p0, v2, v0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getNextArgRequired()Ljava/lang/String;
    .locals 3

    .line 292
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument expected after \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextOption()Ljava/lang/String;
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 215
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_0

    return-object v4

    .line 218
    :cond_0
    aget-object v0, v2, v0

    const-string v2, "-"

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v4

    .line 222
    :cond_1
    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    const-string v2, "--"

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v4

    .line 226
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 p0, 0x0

    .line 229
    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 231
    :cond_3
    iput-object v4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    .line 235
    :cond_4
    iput-object v4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    return-object v0

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int/2addr p0, v1

    aget-object p0, v0, p0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No argument expected after \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public getRawErrorStream()Ljava/io/OutputStream;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    return-object p0
.end method

.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method public getRemainingArgsCount()I
    .locals 2

    .line 281
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v1, p0

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 284
    :cond_0
    array-length p0, p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public getTarget()Landroid/os/Binder;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    return-object p0
.end method

.method public handleDefaultCommands(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "help"

    .line 301
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-h"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->onHelp()V

    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    .line 59
    iput-object p2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    .line 60
    iput-object p3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    .line 61
    iput-object p4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    .line 62
    iput-object p5, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    .line 64
    iput p6, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    .line 65
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    .line 67
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    .line 68
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    .line 69
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    .line 70
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    .line 71
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public abstract onCommand(Ljava/lang/String;)I
.end method

.method public abstract onHelp()V
.end method

.method public peekNextArg()Ljava/lang/String;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 258
    :cond_0
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object p0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 259
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public peekRemainingArgs()[Ljava/lang/String;
    .locals 4

    .line 269
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRemainingArgsCount()I

    move-result v0

    .line 270
    new-array v0, v0, [Ljava/lang/String;

    .line 271
    iget v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    :goto_0
    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 272
    iget v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int v3, v1, v3

    aget-object v2, v2, v1

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
