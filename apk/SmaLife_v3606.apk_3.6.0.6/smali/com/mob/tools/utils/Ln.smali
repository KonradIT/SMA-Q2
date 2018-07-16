.class public Lcom/mob/tools/utils/Ln;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/Ln$Print;,
        Lcom/mob/tools/utils/Ln$BaseConfig;
    }
.end annotation


# static fields
.field private static config:Lcom/mob/tools/utils/Ln$BaseConfig;

.field private static print:Lcom/mob/tools/utils/Ln$Print;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mob/tools/utils/Ln$BaseConfig;

    invoke-direct {v0}, Lcom/mob/tools/utils/Ln$BaseConfig;-><init>()V

    sput-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    new-instance v0, Lcom/mob/tools/utils/Ln$Print;

    invoke-direct {v0}, Lcom/mob/tools/utils/Ln$Print;-><init>()V

    sput-object v0, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mob/tools/utils/Ln$BaseConfig;
    .locals 1

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    return-object v0
.end method

.method public static close()V
    .locals 2

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    const/4 v1, 0x7

    iput v1, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    return-void
.end method

.method public static varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    const/4 v2, 0x3

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    if-lez v1, :cond_0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/Ln$Print;->broadcast(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    if-lez v1, :cond_2

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/Throwable;)I
    .locals 3

    const/4 v2, 0x3

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-gt v0, v2, :cond_0

    sget-object v0, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/utils/Ln$Print;->broadcast(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x3

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-le v0, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v3, v0}, Lcom/mob/tools/utils/Ln$Print;->broadcast(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v3, v0}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    const/4 v2, 0x6

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    if-lez v1, :cond_0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/Ln$Print;->broadcast(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    if-lez v1, :cond_2

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/Throwable;)I
    .locals 3

    const/4 v2, 0x6

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-gt v0, v2, :cond_0

    sget-object v0, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/utils/Ln$Print;->broadcast(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x6

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-le v0, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v3, v0}, Lcom/mob/tools/utils/Ln$Print;->broadcast(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v3, v0}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    const/4 v2, 0x4

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    if-lez v1, :cond_0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/Ln$Print;->broadcast(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    if-lez v1, :cond_2

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/Throwable;)I
    .locals 3

    const/4 v2, 0x4

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-gt v0, v2, :cond_0

    sget-object v0, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/utils/Ln$Print;->broadcast(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x4

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-le v0, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v3, v0}, Lcom/mob/tools/utils/Ln$Print;->broadcast(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v3, v0}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static isDebugEnabled()Z
    .locals 2

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVerboseEnabled()Z
    .locals 2

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logLevelToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "VERBOSE"

    goto :goto_0

    :pswitch_1
    const-string v0, "DEBUG"

    goto :goto_0

    :pswitch_2
    const-string v0, "INFO"

    goto :goto_0

    :pswitch_3
    const-string v0, "WARN"

    goto :goto_0

    :pswitch_4
    const-string v0, "ERROR"

    goto :goto_0

    :pswitch_5
    const-string v0, "ASSERT"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Ln$BaseConfig;->setContext(Landroid/content/Context;)V

    sget-object v0, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Ln$Print;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    const/4 v2, 0x2

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    if-lez v1, :cond_1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static v(Ljava/lang/Throwable;)I
    .locals 3

    const/4 v2, 0x2

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-gt v0, v2, :cond_0

    sget-object v0, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-le v0, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_1

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v3, v0}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    const/4 v2, 0x5

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    if-lez v1, :cond_1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/Throwable;)I
    .locals 3

    const/4 v2, 0x5

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-gt v0, v2, :cond_0

    sget-object v0, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4

    const/4 v3, 0x5

    sget-object v0, Lcom/mob/tools/utils/Ln;->config:Lcom/mob/tools/utils/Ln$BaseConfig;

    iget v0, v0, Lcom/mob/tools/utils/Ln$BaseConfig;->minimumLogLevel:I

    if-le v0, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    if-lez v2, :cond_1

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mob/tools/utils/Ln;->print:Lcom/mob/tools/utils/Ln$Print;

    invoke-virtual {v1, v3, v0}, Lcom/mob/tools/utils/Ln$Print;->println(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
