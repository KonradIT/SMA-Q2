.class public Lcom/umeng/common/message/b;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final A:Ljava/lang/String; = "Android"

.field public static final B:Ljava/lang/String; = "Android"

.field private static final C:Ljava/lang/String;


# instance fields
.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private final O:Ljava/lang/String;

.field private final P:Ljava/lang/String;

.field private final Q:Ljava/lang/String;

.field private final R:Ljava/lang/String;

.field private final S:Ljava/lang/String;

.field private final T:Ljava/lang/String;

.field private final U:Ljava/lang/String;

.field private final V:Ljava/lang/String;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private final Y:Ljava/lang/String;

.field private final Z:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field private final aa:Ljava/lang/String;

.field private final ab:Ljava/lang/String;

.field private final ac:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/umeng/common/message/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/message/b;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "appkey"

    iput-object v0, p0, Lcom/umeng/common/message/b;->D:Ljava/lang/String;

    .line 55
    const-string v0, "channel"

    iput-object v0, p0, Lcom/umeng/common/message/b;->E:Ljava/lang/String;

    .line 56
    const-string v0, "device_id"

    iput-object v0, p0, Lcom/umeng/common/message/b;->F:Ljava/lang/String;

    .line 57
    const-string v0, "idmd5"

    iput-object v0, p0, Lcom/umeng/common/message/b;->G:Ljava/lang/String;

    .line 58
    const-string v0, "mc"

    iput-object v0, p0, Lcom/umeng/common/message/b;->H:Ljava/lang/String;

    .line 59
    const-string v0, "req_time"

    iput-object v0, p0, Lcom/umeng/common/message/b;->I:Ljava/lang/String;

    .line 61
    const-string v0, "device_model"

    iput-object v0, p0, Lcom/umeng/common/message/b;->J:Ljava/lang/String;

    .line 62
    const-string v0, "os"

    iput-object v0, p0, Lcom/umeng/common/message/b;->K:Ljava/lang/String;

    .line 63
    const-string v0, "os_version"

    iput-object v0, p0, Lcom/umeng/common/message/b;->L:Ljava/lang/String;

    .line 64
    const-string v0, "resolution"

    iput-object v0, p0, Lcom/umeng/common/message/b;->M:Ljava/lang/String;

    .line 65
    const-string v0, "cpu"

    iput-object v0, p0, Lcom/umeng/common/message/b;->N:Ljava/lang/String;

    .line 66
    const-string v0, "gpu_vender"

    iput-object v0, p0, Lcom/umeng/common/message/b;->O:Ljava/lang/String;

    .line 67
    const-string v0, "gpu_renderer"

    iput-object v0, p0, Lcom/umeng/common/message/b;->P:Ljava/lang/String;

    .line 69
    const-string v0, "app_version"

    iput-object v0, p0, Lcom/umeng/common/message/b;->Q:Ljava/lang/String;

    .line 70
    const-string v0, "version_code"

    iput-object v0, p0, Lcom/umeng/common/message/b;->R:Ljava/lang/String;

    .line 71
    const-string v0, "package_name"

    iput-object v0, p0, Lcom/umeng/common/message/b;->S:Ljava/lang/String;

    .line 73
    const-string v0, "sdk_type"

    iput-object v0, p0, Lcom/umeng/common/message/b;->T:Ljava/lang/String;

    .line 74
    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/umeng/common/message/b;->U:Ljava/lang/String;

    .line 76
    const-string v0, "timezone"

    iput-object v0, p0, Lcom/umeng/common/message/b;->V:Ljava/lang/String;

    .line 77
    const-string v0, "country"

    iput-object v0, p0, Lcom/umeng/common/message/b;->W:Ljava/lang/String;

    .line 78
    const-string v0, "language"

    iput-object v0, p0, Lcom/umeng/common/message/b;->X:Ljava/lang/String;

    .line 80
    const-string v0, "access"

    iput-object v0, p0, Lcom/umeng/common/message/b;->Y:Ljava/lang/String;

    .line 81
    const-string v0, "access_subtype"

    iput-object v0, p0, Lcom/umeng/common/message/b;->Z:Ljava/lang/String;

    .line 82
    const-string v0, "carrier"

    iput-object v0, p0, Lcom/umeng/common/message/b;->aa:Ljava/lang/String;

    .line 90
    const-string v0, "wrapper_type"

    iput-object v0, p0, Lcom/umeng/common/message/b;->ab:Ljava/lang/String;

    .line 91
    const-string v0, "wrapper_version"

    iput-object v0, p0, Lcom/umeng/common/message/b;->ac:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "appkey"

    iput-object v0, p0, Lcom/umeng/common/message/b;->D:Ljava/lang/String;

    .line 55
    const-string v0, "channel"

    iput-object v0, p0, Lcom/umeng/common/message/b;->E:Ljava/lang/String;

    .line 56
    const-string v0, "device_id"

    iput-object v0, p0, Lcom/umeng/common/message/b;->F:Ljava/lang/String;

    .line 57
    const-string v0, "idmd5"

    iput-object v0, p0, Lcom/umeng/common/message/b;->G:Ljava/lang/String;

    .line 58
    const-string v0, "mc"

    iput-object v0, p0, Lcom/umeng/common/message/b;->H:Ljava/lang/String;

    .line 59
    const-string v0, "req_time"

    iput-object v0, p0, Lcom/umeng/common/message/b;->I:Ljava/lang/String;

    .line 61
    const-string v0, "device_model"

    iput-object v0, p0, Lcom/umeng/common/message/b;->J:Ljava/lang/String;

    .line 62
    const-string v0, "os"

    iput-object v0, p0, Lcom/umeng/common/message/b;->K:Ljava/lang/String;

    .line 63
    const-string v0, "os_version"

    iput-object v0, p0, Lcom/umeng/common/message/b;->L:Ljava/lang/String;

    .line 64
    const-string v0, "resolution"

    iput-object v0, p0, Lcom/umeng/common/message/b;->M:Ljava/lang/String;

    .line 65
    const-string v0, "cpu"

    iput-object v0, p0, Lcom/umeng/common/message/b;->N:Ljava/lang/String;

    .line 66
    const-string v0, "gpu_vender"

    iput-object v0, p0, Lcom/umeng/common/message/b;->O:Ljava/lang/String;

    .line 67
    const-string v0, "gpu_renderer"

    iput-object v0, p0, Lcom/umeng/common/message/b;->P:Ljava/lang/String;

    .line 69
    const-string v0, "app_version"

    iput-object v0, p0, Lcom/umeng/common/message/b;->Q:Ljava/lang/String;

    .line 70
    const-string v0, "version_code"

    iput-object v0, p0, Lcom/umeng/common/message/b;->R:Ljava/lang/String;

    .line 71
    const-string v0, "package_name"

    iput-object v0, p0, Lcom/umeng/common/message/b;->S:Ljava/lang/String;

    .line 73
    const-string v0, "sdk_type"

    iput-object v0, p0, Lcom/umeng/common/message/b;->T:Ljava/lang/String;

    .line 74
    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/umeng/common/message/b;->U:Ljava/lang/String;

    .line 76
    const-string v0, "timezone"

    iput-object v0, p0, Lcom/umeng/common/message/b;->V:Ljava/lang/String;

    .line 77
    const-string v0, "country"

    iput-object v0, p0, Lcom/umeng/common/message/b;->W:Ljava/lang/String;

    .line 78
    const-string v0, "language"

    iput-object v0, p0, Lcom/umeng/common/message/b;->X:Ljava/lang/String;

    .line 80
    const-string v0, "access"

    iput-object v0, p0, Lcom/umeng/common/message/b;->Y:Ljava/lang/String;

    .line 81
    const-string v0, "access_subtype"

    iput-object v0, p0, Lcom/umeng/common/message/b;->Z:Ljava/lang/String;

    .line 82
    const-string v0, "carrier"

    iput-object v0, p0, Lcom/umeng/common/message/b;->aa:Ljava/lang/String;

    .line 90
    const-string v0, "wrapper_type"

    iput-object v0, p0, Lcom/umeng/common/message/b;->ab:Ljava/lang/String;

    .line 91
    const-string v0, "wrapper_version"

    iput-object v0, p0, Lcom/umeng/common/message/b;->ac:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/umeng/common/message/b;->a:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/umeng/common/message/b;->b:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    const-string v0, "appkey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->a:Ljava/lang/String;

    .line 104
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->c:Ljava/lang/String;

    .line 105
    const-string v0, "idmd5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->d:Ljava/lang/String;

    .line 107
    const-string v0, "mc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "mc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->e:Ljava/lang/String;

    .line 111
    :cond_0
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->b:Ljava/lang/String;

    .line 115
    :cond_1
    const-string v0, "req_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    const-string v0, "req_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/common/message/b;->f:J

    .line 119
    :cond_2
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    const-string v0, "device_model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "device_model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/common/message/b;->g:Ljava/lang/String;

    .line 123
    const-string v0, "os"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "os"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/common/message/b;->h:Ljava/lang/String;

    .line 124
    const-string v0, "os_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "os_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/umeng/common/message/b;->i:Ljava/lang/String;

    .line 125
    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/umeng/common/message/b;->j:Ljava/lang/String;

    .line 127
    const-string v0, "cpu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "cpu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/umeng/common/message/b;->k:Ljava/lang/String;

    .line 128
    const-string v0, "gpu_vender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "gpu_vender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/umeng/common/message/b;->l:Ljava/lang/String;

    .line 129
    const-string v0, "gpu_renderer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gpu_renderer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/common/message/b;->m:Ljava/lang/String;

    .line 131
    return-void

    :cond_1
    move-object v0, v1

    .line 122
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 123
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 124
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 125
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 127
    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 128
    goto :goto_5
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/common/message/b;->n:Ljava/lang/String;

    .line 136
    const-string v0, "version_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "version_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/common/message/b;->o:Ljava/lang/String;

    .line 138
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/common/message/b;->p:Ljava/lang/String;

    .line 139
    return-void

    :cond_1
    move-object v0, v1

    .line 134
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 136
    goto :goto_1
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "sdk_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->q:Ljava/lang/String;

    .line 143
    const-string v0, "sdk_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->r:Ljava/lang/String;

    .line 144
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 147
    const-string v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/umeng/common/message/b;->s:I

    .line 148
    const-string v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/common/message/b;->t:Ljava/lang/String;

    .line 149
    const-string v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/common/message/b;->u:Ljava/lang/String;

    .line 150
    return-void

    .line 147
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 148
    goto :goto_1
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    const-string v0, "access"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "access"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/common/message/b;->v:Ljava/lang/String;

    .line 154
    const-string v0, "access_subtype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "access_subtype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/common/message/b;->w:Ljava/lang/String;

    .line 155
    const-string v0, "carrier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "carrier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/common/message/b;->x:Ljava/lang/String;

    .line 156
    return-void

    :cond_1
    move-object v0, v1

    .line 153
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 154
    goto :goto_1
.end method

.method private i(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 159
    const-string v0, "wrapper_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wrapper_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/common/message/b;->y:Ljava/lang/String;

    .line 161
    const-string v0, "wrapper_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wrapper_version"

    .line 162
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/common/message/b;->z:Ljava/lang/String;

    .line 163
    return-void

    :cond_1
    move-object v0, v1

    .line 159
    goto :goto_0
.end method

.method private j(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    const-string v0, "appkey"

    iget-object v1, p0, Lcom/umeng/common/message/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    iget-object v0, p0, Lcom/umeng/common/message/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "channel"

    iget-object v1, p0, Lcom/umeng/common/message/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_0
    return-void
.end method

.method private k(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/umeng/common/message/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "device_model"

    iget-object v1, p0, Lcom/umeng/common/message/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/umeng/common/message/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 204
    const-string v0, "os"

    iget-object v1, p0, Lcom/umeng/common/message/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/umeng/common/message/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 206
    const-string v0, "os_version"

    iget-object v1, p0, Lcom/umeng/common/message/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_2
    return-void
.end method

.method private l(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/umeng/common/message/b;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "app_version"

    iget-object v1, p0, Lcom/umeng/common/message/b;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/umeng/common/message/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "version_code"

    iget-object v1, p0, Lcom/umeng/common/message/b;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    :cond_1
    return-void
.end method

.method private m(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    const-string v0, "sdk_type"

    iget-object v1, p0, Lcom/umeng/common/message/b;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v0, "sdk_version"

    iget-object v1, p0, Lcom/umeng/common/message/b;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    return-void
.end method

.method private n(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    const-string v0, "timezone"

    iget v1, p0, Lcom/umeng/common/message/b;->s:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    iget-object v0, p0, Lcom/umeng/common/message/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "country"

    iget-object v1, p0, Lcom/umeng/common/message/b;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/umeng/common/message/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "language"

    iget-object v1, p0, Lcom/umeng/common/message/b;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    :cond_1
    return-void
.end method

.method private o(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/umeng/common/message/b;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "access"

    iget-object v1, p0, Lcom/umeng/common/message/b;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/umeng/common/message/b;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 246
    const-string v0, "access_subtype"

    iget-object v1, p0, Lcom/umeng/common/message/b;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/umeng/common/message/b;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 248
    const-string v0, "carrier"

    iget-object v1, p0, Lcom/umeng/common/message/b;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :cond_2
    return-void
.end method

.method private p(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/umeng/common/message/b;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "wrapper_type"

    iget-object v1, p0, Lcom/umeng/common/message/b;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/umeng/common/message/b;->z:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "wrapper_version"

    iget-object v1, p0, Lcom/umeng/common/message/b;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 302
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/common/message/b;->g:Ljava/lang/String;

    .line 303
    const-string v0, "Android"

    iput-object v0, p0, Lcom/umeng/common/message/b;->h:Ljava/lang/String;

    .line 304
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/common/message/b;->i:Ljava/lang/String;

    .line 305
    invoke-static {p1}, Lcom/umeng/common/message/DeviceConfig;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->j:Ljava/lang/String;

    .line 306
    invoke-static {}, Lcom/umeng/common/message/DeviceConfig;->getCPU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->k:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public varargs a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 287
    const/4 v0, 0x0

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->a:Ljava/lang/String;

    .line 288
    const/4 v0, 0x1

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->b:Ljava/lang/String;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/umeng/common/message/b;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 292
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->a:Ljava/lang/String;

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/umeng/common/message/b;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 294
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->b:Ljava/lang/String;

    .line 296
    :cond_2
    invoke-static {p1}, Lcom/umeng/common/message/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->c:Ljava/lang/String;

    .line 297
    invoke-static {p1}, Lcom/umeng/common/message/DeviceConfig;->getDeviceIdMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->d:Ljava/lang/String;

    .line 298
    invoke-static {p1}, Lcom/umeng/common/message/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->e:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->c(Lorg/json/JSONObject;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->d(Lorg/json/JSONObject;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->e(Lorg/json/JSONObject;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->f(Lorg/json/JSONObject;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->g(Lorg/json/JSONObject;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->h(Lorg/json/JSONObject;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->i(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    iget-object v1, p0, Lcom/umeng/common/message/b;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 273
    sget-object v1, Lcom/umeng/common/message/b;->C:Ljava/lang/String;

    const-string v2, "missing appkey "

    invoke-static {v1, v2}, Lcom/umeng/common/message/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return v0

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/umeng/common/message/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/common/message/b;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 278
    :cond_1
    sget-object v1, Lcom/umeng/common/message/b;->C:Ljava/lang/String;

    const-string v2, "missing device id"

    invoke-static {v1, v2}, Lcom/umeng/common/message/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 312
    invoke-static {p1}, Lcom/umeng/common/message/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->n:Ljava/lang/String;

    .line 313
    invoke-static {p1}, Lcom/umeng/common/message/DeviceConfig;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->o:Ljava/lang/String;

    .line 314
    invoke-static {p1}, Lcom/umeng/common/message/DeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->p:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public varargs b(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/umeng/common/message/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/umeng/common/message/b;->a(Landroid/content/Context;)V

    .line 344
    invoke-virtual {p0, p1}, Lcom/umeng/common/message/b;->b(Landroid/content/Context;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/umeng/common/message/b;->c(Landroid/content/Context;)V

    .line 346
    invoke-virtual {p0, p1}, Lcom/umeng/common/message/b;->d(Landroid/content/Context;)V

    .line 347
    invoke-virtual {p0, p1}, Lcom/umeng/common/message/b;->e(Landroid/content/Context;)V

    .line 348
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->j(Lorg/json/JSONObject;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->k(Lorg/json/JSONObject;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->l(Lorg/json/JSONObject;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->m(Lorg/json/JSONObject;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/umeng/common/message/b;->o(Lorg/json/JSONObject;)V

    .line 268
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/umeng/common/message/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/common/message/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 318
    const-string v0, "Android"

    iput-object v0, p0, Lcom/umeng/common/message/b;->q:Ljava/lang/String;

    .line 319
    const-string v0, "2.2.0"

    iput-object v0, p0, Lcom/umeng/common/message/b;->r:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 323
    invoke-static {p1}, Lcom/umeng/common/message/DeviceConfig;->getTimeZone(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/umeng/common/message/b;->s:I

    .line 325
    invoke-static {p1}, Lcom/umeng/common/message/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 327
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/umeng/common/message/b;->t:Ljava/lang/String;

    .line 328
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/common/message/b;->u:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 332
    invoke-static {p1}, Lcom/umeng/common/message/DeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 334
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/umeng/common/message/b;->v:Ljava/lang/String;

    .line 335
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/common/message/b;->w:Ljava/lang/String;

    .line 337
    invoke-static {p1}, Lcom/umeng/common/message/DeviceConfig;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/message/b;->x:Ljava/lang/String;

    .line 338
    return-void
.end method
