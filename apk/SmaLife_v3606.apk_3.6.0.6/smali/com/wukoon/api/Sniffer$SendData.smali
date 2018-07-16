.class Lcom/wukoon/api/Sniffer$SendData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukoon/api/Sniffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendData"
.end annotation


# instance fields
.field public ka:B

.field public kb:B

.field public kc:B

.field public kd:B

.field public ke:B


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/wukoon/api/Sniffer$SendData;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    iget-byte v2, p0, Lcom/wukoon/api/Sniffer$SendData;->kd:B

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget-byte v2, p0, Lcom/wukoon/api/Sniffer$SendData;->kc:B

    aput-byte v2, v0, v1

    iget-byte v1, p0, Lcom/wukoon/api/Sniffer$SendData;->ke:B

    aput-byte v1, v0, v3

    const/4 v1, 0x0

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
