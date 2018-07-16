.class public Lcn/smssdk/b/b;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcn/smssdk/b/b;

.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Lcn/smssdk/b/a;

.field private b:Lcn/smssdk/utils/e;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcn/smssdk/b/b;->d:Lcn/smssdk/b/b;

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcn/smssdk/b/b;->f:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x7684s
        -0x6574s
        -0x743fs
        0x7801s
        -0xe6s
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcn/smssdk/b/a;->a(Landroid/content/Context;)Lcn/smssdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/b/b;->a:Lcn/smssdk/b/a;

    const-string v0, "SMSSDK"

    invoke-static {p1, v0}, Lcn/smssdk/utils/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/smssdk/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/b/b;->b:Lcn/smssdk/utils/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/smssdk/b/b;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/smssdk/b/b;
    .locals 1

    sget-object v0, Lcn/smssdk/b/b;->d:Lcn/smssdk/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/smssdk/b/b;

    invoke-direct {v0, p0}, Lcn/smssdk/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/smssdk/b/b;->d:Lcn/smssdk/b/b;

    :cond_0
    sget-object v0, Lcn/smssdk/b/b;->d:Lcn/smssdk/b/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3011

    const/16 v4, 0x3010

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [C

    aput-char v4, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [C

    aput-char v5, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [C

    aput-char v5, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [C

    aput-char v4, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a()V
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "[RMS]:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcn/smssdk/b/b;->c:Ljava/util/HashMap;

    const-string v3, "originatingAddress"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcn/smssdk/b/b;->a:Lcn/smssdk/b/a;

    invoke-virtual {v2}, Lcn/smssdk/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcn/smssdk/b/b;->b:Lcn/smssdk/utils/e;

    invoke-virtual {v2}, Lcn/smssdk/utils/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcn/smssdk/b/b;->a:Lcn/smssdk/b/a;

    invoke-virtual {v2}, Lcn/smssdk/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcn/smssdk/b/b;->c:Ljava/util/HashMap;

    const-string v3, "timestampMillis"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcn/smssdk/b/b;->a:Lcn/smssdk/b/a;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/smssdk/b/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lcn/smssdk/b/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/smssdk/b/b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1

    sget-object v1, Lcn/smssdk/b/b;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "Your pin is "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_0

    sget-object v1, Lcn/smssdk/b/b;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/telephony/SmsMessage;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    const-string v1, "originatingAddress"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/smssdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timestampMillis"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/smssdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "messageBody"

    invoke-direct {p0, v1, v0}, Lcn/smssdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/smssdk/b/b;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    invoke-direct {p0, v0}, Lcn/smssdk/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->CRC32([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcn/smssdk/b/b;->a:Lcn/smssdk/b/a;

    invoke-virtual {v3}, Lcn/smssdk/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "operation not in UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcn/smssdk/b/b;->e:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "listener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcn/smssdk/b/b;->e:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;

    invoke-interface {v1, v0}, Lcn/smssdk/SMSSDK$VerifyCodeReadListener;->onReadVerifyCode(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/smssdk/b/b;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V
    .locals 0

    iput-object p1, p0, Lcn/smssdk/b/b;->e:Lcn/smssdk/SMSSDK$VerifyCodeReadListener;

    return-void
.end method

.method public a(Landroid/telephony/SmsMessage;)Z
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcn/smssdk/b/b;->b(Landroid/telephony/SmsMessage;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
