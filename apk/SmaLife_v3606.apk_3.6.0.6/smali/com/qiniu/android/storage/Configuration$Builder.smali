.class public Lcom/qiniu/android/storage/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/storage/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private chunkSize:I

.field private connectTimeout:I

.field private dns:Lcom/qiniu/android/dns/DnsManager;

.field private keyGen:Lcom/qiniu/android/storage/KeyGenerator;

.field private proxy:Lcom/qiniu/android/http/Proxy;

.field private putThreshold:I

.field private recorder:Lcom/qiniu/android/storage/Recorder;

.field private responseTimeout:I

.field private retryMax:I

.field private upHost:Ljava/lang/String;

.field private upHostBackup:Ljava/lang/String;

.field private upIp:Ljava/lang/String;

.field private upIp2:Ljava/lang/String;

.field private upPort:I

.field private urlConverter:Lcom/qiniu/android/http/UrlConverter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object v1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 152
    iput-object v1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    .line 153
    iput-object v1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->proxy:Lcom/qiniu/android/http/Proxy;

    .line 155
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->chunkSize:I

    .line 156
    const/high16 v0, 0x80000

    iput v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->putThreshold:I

    .line 157
    const/16 v0, 0xa

    iput v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->connectTimeout:I

    .line 158
    const/16 v0, 0x3c

    iput v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->responseTimeout:I

    .line 159
    const/4 v0, 0x5

    iput v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->retryMax:I

    .line 160
    iput-object v1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    .line 161
    iput-object v1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->dns:Lcom/qiniu/android/dns/DnsManager;

    .line 164
    sget-object v0, Lcom/qiniu/android/storage/Zone;->zone0:Lcom/qiniu/android/storage/Zone;

    iget-object v0, v0, Lcom/qiniu/android/storage/Zone;->upHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upHost:Ljava/lang/String;

    .line 165
    sget-object v0, Lcom/qiniu/android/storage/Zone;->zone0:Lcom/qiniu/android/storage/Zone;

    iget-object v0, v0, Lcom/qiniu/android/storage/Zone;->upHostBackup:Ljava/lang/String;

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upHostBackup:Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/qiniu/android/storage/Zone;->zone0:Lcom/qiniu/android/storage/Zone;

    iget-object v0, v0, Lcom/qiniu/android/storage/Zone;->upIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upIp:Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/qiniu/android/storage/Zone;->zone0:Lcom/qiniu/android/storage/Zone;

    iget-object v0, v0, Lcom/qiniu/android/storage/Zone;->upIp2:Ljava/lang/String;

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upIp2:Ljava/lang/String;

    .line 168
    const/16 v0, 0x22b8

    iput v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upPort:I

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upHostBackup:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->retryMax:I

    return v0
.end method

.method static synthetic access$1100(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/Proxy;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->proxy:Lcom/qiniu/android/http/Proxy;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/UrlConverter;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/dns/DnsManager;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->dns:Lcom/qiniu/android/dns/DnsManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upPort:I

    return v0
.end method

.method static synthetic access$200(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upIp2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->chunkSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->putThreshold:I

    return v0
.end method

.method static synthetic access$600(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->connectTimeout:I

    return v0
.end method

.method static synthetic access$700(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->responseTimeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/Recorder;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->recorder:Lcom/qiniu/android/storage/Recorder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/KeyGenerator;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/qiniu/android/storage/Configuration;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lcom/qiniu/android/storage/Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qiniu/android/storage/Configuration;-><init>(Lcom/qiniu/android/storage/Configuration$Builder;Lcom/qiniu/android/storage/Configuration$1;)V

    return-object v0
.end method

.method public chunkSize(I)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->chunkSize:I

    .line 201
    return-object p0
.end method

.method public connectTimeout(I)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->connectTimeout:I

    .line 211
    return-object p0
.end method

.method public dns(Lcom/qiniu/android/dns/DnsManager;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0
    .param p1, "dns"    # Lcom/qiniu/android/dns/DnsManager;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->dns:Lcom/qiniu/android/dns/DnsManager;

    .line 231
    return-object p0
.end method

.method public proxy(Lcom/qiniu/android/http/Proxy;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0
    .param p1, "proxy"    # Lcom/qiniu/android/http/Proxy;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->proxy:Lcom/qiniu/android/http/Proxy;

    .line 196
    return-object p0
.end method

.method public putThreshhold(I)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->putThreshold:I

    .line 206
    return-object p0
.end method

.method public recorder(Lcom/qiniu/android/storage/Recorder;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0
    .param p1, "recorder"    # Lcom/qiniu/android/storage/Recorder;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 180
    return-object p0
.end method

.method public recorder(Lcom/qiniu/android/storage/Recorder;Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0
    .param p1, "recorder"    # Lcom/qiniu/android/storage/Recorder;
    .param p2, "keyGen"    # Lcom/qiniu/android/storage/KeyGenerator;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 185
    iput-object p2, p0, Lcom/qiniu/android/storage/Configuration$Builder;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    .line 186
    return-object p0
.end method

.method public responseTimeout(I)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->responseTimeout:I

    .line 216
    return-object p0
.end method

.method public retryMax(I)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0
    .param p1, "times"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->retryMax:I

    .line 221
    return-object p0
.end method

.method public upPort(I)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upPort:I

    .line 191
    return-object p0
.end method

.method public urlConverter(Lcom/qiniu/android/http/UrlConverter;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0
    .param p1, "converter"    # Lcom/qiniu/android/http/UrlConverter;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    .line 226
    return-object p0
.end method

.method public zone(Lcom/qiniu/android/storage/Zone;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 1
    .param p1, "zone"    # Lcom/qiniu/android/storage/Zone;

    .prologue
    .line 172
    iget-object v0, p1, Lcom/qiniu/android/storage/Zone;->upHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upHost:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/qiniu/android/storage/Zone;->upHostBackup:Ljava/lang/String;

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upHostBackup:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/qiniu/android/storage/Zone;->upIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upIp:Ljava/lang/String;

    .line 175
    return-object p0
.end method
