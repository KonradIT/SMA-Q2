.class public Lcom/wukoon/api/Sniffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wukoon/api/Sniffer$Callback;,
        Lcom/wukoon/api/Sniffer$EventListener;,
        Lcom/wukoon/api/Sniffer$RecvThread;,
        Lcom/wukoon/api/Sniffer$SendData;,
        Lcom/wukoon/api/Sniffer$SnifferThread;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static jL:I

.field private static jN:C

.field private static jO:I

.field private static jP:Lcom/wukoon/api/Sniffer;

.field private static synthetic jY:[I


# instance fields
.field private jM:I

.field private jQ:Lcom/wukoon/api/Sniffer$RecvThread;

.field private jR:Lcom/wukoon/api/Sniffer$EventListener;

.field private jS:Ljava/lang/Boolean;

.field private jT:Ljava/lang/String;

.field private jU:Ljava/lang/String;

.field private jV:Lcom/wukoon/api/Sniffer$SendData;

.field private jW:Lcom/wukoon/api/UDPClient;

.field private jX:Lcom/wukoon/api/Sniffer$SnifferThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Sniffer"

    sput-object v0, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    sput v0, Lcom/wukoon/api/Sniffer;->jL:I

    const/16 v0, 0x77

    sput-char v0, Lcom/wukoon/api/Sniffer;->jN:C

    const/16 v0, 0x1f40

    sput v0, Lcom/wukoon/api/Sniffer;->jO:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/wukoon/api/Sniffer$1;

    invoke-direct {v0, p0}, Lcom/wukoon/api/Sniffer$1;-><init>(Lcom/wukoon/api/Sniffer;)V

    iput-object v0, p0, Lcom/wukoon/api/Sniffer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/wukoon/api/Sniffer$SendData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wukoon/api/Sniffer$SendData;-><init>(B)V

    iput-object v0, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    invoke-static {}, Lcom/wukoon/api/UDPClient;->getInstance()Lcom/wukoon/api/UDPClient;

    move-result-object v0

    iput-object v0, p0, Lcom/wukoon/api/Sniffer;->jW:Lcom/wukoon/api/UDPClient;

    new-instance v0, Lcom/wukoon/api/Sniffer$RecvThread;

    invoke-direct {v0, p0}, Lcom/wukoon/api/Sniffer$RecvThread;-><init>(Lcom/wukoon/api/Sniffer;)V

    iput-object v0, p0, Lcom/wukoon/api/Sniffer;->jQ:Lcom/wukoon/api/Sniffer$RecvThread;

    return-void
.end method

.method static synthetic a(Lcom/wukoon/api/Sniffer;)Lcom/wukoon/api/Sniffer$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/wukoon/api/Sniffer;->jR:Lcom/wukoon/api/Sniffer$EventListener;

    return-object v0
.end method

.method static synthetic b(Lcom/wukoon/api/Sniffer;)I
    .locals 1

    iget v0, p0, Lcom/wukoon/api/Sniffer;->jM:I

    return v0
.end method

.method static synthetic c(Lcom/wukoon/api/Sniffer;)Z
    .locals 2

    const/16 v1, 0x20

    iget-object v0, p0, Lcom/wukoon/api/Sniffer;->jT:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wukoon/api/Sniffer;->jU:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/wukoon/api/Sniffer;->jT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/wukoon/api/Sniffer;->jU:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic cu()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic cv()[I
    .locals 3

    sget-object v0, Lcom/wukoon/api/Sniffer;->jY:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread$State;->values()[Ljava/lang/Thread$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    sput-object v0, Lcom/wukoon/api/Sniffer;->jY:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_6
.end method

.method static synthetic d(Lcom/wukoon/api/Sniffer;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/wukoon/api/Sniffer;->jS:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic e(Lcom/wukoon/api/Sniffer;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iput-byte v0, v1, Lcom/wukoon/api/Sniffer$SendData;->ka:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iput-byte v0, v1, Lcom/wukoon/api/Sniffer$SendData;->kb:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v2, v2, Lcom/wukoon/api/Sniffer$SendData;->ka:B

    shl-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v3, v3, Lcom/wukoon/api/Sniffer$SendData;->kb:B

    and-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->ke:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->kc:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v2, v2, Lcom/wukoon/api/Sniffer$SendData;->ke:B

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v3, v3, Lcom/wukoon/api/Sniffer$SendData;->kc:B

    xor-int/2addr v2, v3

    sget-char v3, Lcom/wukoon/api/Sniffer;->jN:C

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->kd:B

    sget-object v1, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    invoke-virtual {v1}, Lcom/wukoon/api/Sniffer$SendData;->getData()Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    iget v2, p0, Lcom/wukoon/api/Sniffer;->jM:I

    add-int/lit8 v2, v2, 0x28

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    :goto_0
    sget v2, Lcom/wukoon/api/Sniffer;->jL:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jW:Lcom/wukoon/api/UDPClient;

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    invoke-virtual {v3}, Lcom/wukoon/api/Sniffer$SendData;->getData()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/wukoon/api/Sniffer;->jO:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/wukoon/api/UDPClient;->send(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/wukoon/api/Sniffer;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    const/4 v2, 0x1

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->ka:B

    :goto_0
    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    int-to-byte v2, v0

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->kb:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v2, v2, Lcom/wukoon/api/Sniffer$SendData;->ka:B

    shl-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v3, v3, Lcom/wukoon/api/Sniffer$SendData;->kb:B

    and-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->ke:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->kc:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v2, v2, Lcom/wukoon/api/Sniffer$SendData;->ke:B

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v3, v3, Lcom/wukoon/api/Sniffer$SendData;->kc:B

    xor-int/2addr v2, v3

    sget-char v3, Lcom/wukoon/api/Sniffer;->jN:C

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->kd:B

    sget-object v1, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    invoke-virtual {v1}, Lcom/wukoon/api/Sniffer$SendData;->getData()Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x28

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jW:Lcom/wukoon/api/UDPClient;

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    invoke-virtual {v3}, Lcom/wukoon/api/Sniffer$SendData;->getData()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/wukoon/api/Sniffer;->jO:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/wukoon/api/UDPClient;->send(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/wukoon/api/Sniffer;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    const/4 v2, 0x2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->ka:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iput-byte v0, v1, Lcom/wukoon/api/Sniffer$SendData;->kb:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v2, v2, Lcom/wukoon/api/Sniffer$SendData;->ka:B

    shl-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v3, v3, Lcom/wukoon/api/Sniffer$SendData;->kb:B

    and-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->ke:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jU:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->kc:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v2, v2, Lcom/wukoon/api/Sniffer$SendData;->ke:B

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v3, v3, Lcom/wukoon/api/Sniffer$SendData;->kc:B

    xor-int/2addr v2, v3

    sget-char v3, Lcom/wukoon/api/Sniffer;->jN:C

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->kd:B

    sget-object v1, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    invoke-virtual {v1}, Lcom/wukoon/api/Sniffer$SendData;->getData()Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x28

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    sget v2, Lcom/wukoon/api/Sniffer;->jL:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jW:Lcom/wukoon/api/UDPClient;

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    invoke-virtual {v3}, Lcom/wukoon/api/Sniffer$SendData;->getData()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/wukoon/api/Sniffer;->jO:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/wukoon/api/UDPClient;->send(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/wukoon/api/Sniffer;
    .locals 1

    sget-object v0, Lcom/wukoon/api/Sniffer;->jP:Lcom/wukoon/api/Sniffer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wukoon/api/Sniffer;

    invoke-direct {v0}, Lcom/wukoon/api/Sniffer;-><init>()V

    sput-object v0, Lcom/wukoon/api/Sniffer;->jP:Lcom/wukoon/api/Sniffer;

    :cond_0
    sget-object v0, Lcom/wukoon/api/Sniffer;->jP:Lcom/wukoon/api/Sniffer;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "V1.1"

    return-object v0
.end method

.method static synthetic h(Lcom/wukoon/api/Sniffer;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    const/4 v2, 0x3

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->ka:B

    :goto_0
    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jU:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    int-to-byte v2, v0

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->kb:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v2, v2, Lcom/wukoon/api/Sniffer$SendData;->ka:B

    shl-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v3, v3, Lcom/wukoon/api/Sniffer$SendData;->kb:B

    and-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->ke:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jU:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->kc:B

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v2, v2, Lcom/wukoon/api/Sniffer$SendData;->ke:B

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    iget-byte v3, v3, Lcom/wukoon/api/Sniffer$SendData;->kc:B

    xor-int/2addr v2, v3

    sget-char v3, Lcom/wukoon/api/Sniffer;->jN:C

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/wukoon/api/Sniffer$SendData;->kd:B

    sget-object v1, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    invoke-virtual {v1}, Lcom/wukoon/api/Sniffer$SendData;->getData()Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x28

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jW:Lcom/wukoon/api/UDPClient;

    iget-object v3, p0, Lcom/wukoon/api/Sniffer;->jV:Lcom/wukoon/api/Sniffer$SendData;

    invoke-virtual {v3}, Lcom/wukoon/api/Sniffer$SendData;->getData()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/wukoon/api/Sniffer;->jO:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/wukoon/api/UDPClient;->send(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic i(Lcom/wukoon/api/Sniffer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/wukoon/api/Sniffer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public setListener(Lcom/wukoon/api/Sniffer$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/wukoon/api/Sniffer;->jR:Lcom/wukoon/api/Sniffer$EventListener;

    return-void
.end method

.method public startSniffer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p1, p0, Lcom/wukoon/api/Sniffer;->jT:Ljava/lang/String;

    iput-object p2, p0, Lcom/wukoon/api/Sniffer;->jU:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wukoon/api/Sniffer;->jM:I

    iget-object v0, p0, Lcom/wukoon/api/Sniffer;->jX:Lcom/wukoon/api/Sniffer$SnifferThread;

    if-nez v0, :cond_2

    new-instance v0, Lcom/wukoon/api/Sniffer$SnifferThread;

    invoke-direct {v0, p0, v2}, Lcom/wukoon/api/Sniffer$SnifferThread;-><init>(Lcom/wukoon/api/Sniffer;B)V

    iput-object v0, p0, Lcom/wukoon/api/Sniffer;->jX:Lcom/wukoon/api/Sniffer$SnifferThread;

    :cond_2
    invoke-static {}, Lcom/wukoon/api/Sniffer;->cv()[I

    move-result-object v0

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jX:Lcom/wukoon/api/Sniffer$SnifferThread;

    invoke-virtual {v1}, Lcom/wukoon/api/Sniffer$SnifferThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The sniffing thread is in state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jX:Lcom/wukoon/api/Sniffer$SnifferThread;

    invoke-virtual {v2}, Lcom/wukoon/api/Sniffer$SnifferThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/wukoon/api/Sniffer;->cv()[I

    move-result-object v0

    iget-object v1, p0, Lcom/wukoon/api/Sniffer;->jQ:Lcom/wukoon/api/Sniffer$RecvThread;

    invoke-virtual {v1}, Lcom/wukoon/api/Sniffer$RecvThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    sget-object v0, Lcom/wukoon/api/Sniffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The recving thread is in state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wukoon/api/Sniffer;->jQ:Lcom/wukoon/api/Sniffer$RecvThread;

    invoke-virtual {v2}, Lcom/wukoon/api/Sniffer$RecvThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/wukoon/api/Sniffer$SnifferThread;

    invoke-direct {v0, p0, v2}, Lcom/wukoon/api/Sniffer$SnifferThread;-><init>(Lcom/wukoon/api/Sniffer;B)V

    iput-object v0, p0, Lcom/wukoon/api/Sniffer;->jX:Lcom/wukoon/api/Sniffer$SnifferThread;

    :pswitch_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wukoon/api/Sniffer;->jS:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/wukoon/api/Sniffer;->jX:Lcom/wukoon/api/Sniffer$SnifferThread;

    invoke-virtual {v0}, Lcom/wukoon/api/Sniffer$SnifferThread;->start()V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/wukoon/api/Sniffer$RecvThread;

    invoke-direct {v0, p0}, Lcom/wukoon/api/Sniffer$RecvThread;-><init>(Lcom/wukoon/api/Sniffer;)V

    iput-object v0, p0, Lcom/wukoon/api/Sniffer;->jQ:Lcom/wukoon/api/Sniffer$RecvThread;

    :pswitch_5
    iget-object v0, p0, Lcom/wukoon/api/Sniffer;->jQ:Lcom/wukoon/api/Sniffer$RecvThread;

    invoke-virtual {v0}, Lcom/wukoon/api/Sniffer$RecvThread;->start()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public stopSniffer()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wukoon/api/Sniffer;->jS:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/wukoon/api/Sniffer;->jQ:Lcom/wukoon/api/Sniffer$RecvThread;

    invoke-virtual {v0}, Lcom/wukoon/api/Sniffer$RecvThread;->stopp()V

    return-void
.end method
