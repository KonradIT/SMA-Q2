.class public final enum Lorg/android/agoo/net/channel/ChannelError;
.super Ljava/lang/Enum;
.source "ChannelError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/net/channel/ChannelError$Level;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/net/channel/ChannelError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic C:[Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum a:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum b:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum c:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum d:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum e:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum f:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum g:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum h:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum i:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum j:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum k:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum l:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum m:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum n:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum o:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum p:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum q:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum r:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum s:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum t:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum u:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum v:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum w:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum x:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum y:Lorg/android/agoo/net/channel/ChannelError;

.field public static final enum z:Lorg/android/agoo/net/channel/ChannelError;


# instance fields
.field private A:I

.field private B:Lorg/android/agoo/net/channel/ChannelError$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_CONNECT_THROWABLE"

    const/16 v2, -0x4b0

    invoke-direct {v0, v1, v5, v2}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->a:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_STREAM_RESPONSE_THROWABLE"

    const/16 v2, -0x4b1

    invoke-direct {v0, v1, v6, v2}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->b:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_DATACHUNK_THROWABLE"

    const/16 v2, 0x4b2

    invoke-direct {v0, v1, v7, v2}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->c:Lorg/android/agoo/net/channel/ChannelError;

    .line 8
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_SESSION_ERROR"

    const/16 v2, -0x4b4

    invoke-direct {v0, v1, v8, v2}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->d:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_PING_THROWABLE"

    const/16 v2, -0x4b5

    invoke-direct {v0, v1, v9, v2}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->e:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_INIT_THROWABLE"

    const/4 v2, 0x5

    const/16 v3, 0x4b6

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->f:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->f:Lorg/android/agoo/net/channel/ChannelError;

    .line 9
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_INIT_NOT_FOUND_SO"

    const/4 v2, 0x6

    const/16 v3, 0x4b7

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->f:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->g:Lorg/android/agoo/net/channel/ChannelError;

    .line 10
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_SEND_THROWABLE"

    const/4 v2, 0x7

    const/16 v3, -0x4b8

    invoke-direct {v0, v1, v2, v3}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->h:Lorg/android/agoo/net/channel/ChannelError;

    .line 16
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_DEFAULT_ERROR"

    const/16 v2, 0x8

    const/16 v3, -0x7d0

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->i:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_CONNECT_ERROR"

    const/16 v2, 0x9

    const/16 v3, -0x7d1

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->j:Lorg/android/agoo/net/channel/ChannelError;

    .line 17
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_DISCONNECT"

    const/16 v2, 0xa

    const/16 v3, -0x7d2

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->k:Lorg/android/agoo/net/channel/ChannelError;

    .line 18
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_IO_ERROR"

    const/16 v2, 0xb

    const/16 v3, -0x7ee

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->e:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->l:Lorg/android/agoo/net/channel/ChannelError;

    .line 19
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_NO_MEM"

    const/16 v2, 0xc

    const/16 v3, -0x7ef

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->e:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->m:Lorg/android/agoo/net/channel/ChannelError;

    .line 21
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "CHUNKED_INIT_THROWABLE"

    const/16 v2, 0xd

    const/16 v3, 0x4b9

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->f:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->n:Lorg/android/agoo/net/channel/ChannelError;

    .line 26
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "HTTP_MOVED_TEMP"

    const/16 v2, 0xe

    const/16 v3, 0x12e

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->g:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->o:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "HTTP_TEMPORARY_REDIRECT"

    const/16 v2, 0xf

    const/16 v3, 0x133

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->p:Lorg/android/agoo/net/channel/ChannelError;

    .line 27
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "HTTP_NOT_FOUND"

    const/16 v2, 0x10

    const/16 v3, 0x194

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->q:Lorg/android/agoo/net/channel/ChannelError;

    .line 28
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "HTTP_CONNECT_TIMEOUT"

    const/16 v2, 0x11

    const/16 v3, 0x198

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->r:Lorg/android/agoo/net/channel/ChannelError;

    .line 29
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "HTTP_GATEWAY_TIMEOUT"

    const/16 v2, 0x12

    const/16 v3, 0x1f8

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->s:Lorg/android/agoo/net/channel/ChannelError;

    .line 32
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "X_TOKEN_ERROR"

    const/16 v2, 0x13

    const/16 v3, 0x190

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->c:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->t:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "REQUEST_URL_TOO_LONG"

    const/16 v2, 0x14

    const/16 v3, 0x192

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->a:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->u:Lorg/android/agoo/net/channel/ChannelError;

    .line 37
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SIGN_FAILED"

    const/16 v2, 0x15

    const/16 v3, 0x193

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->h:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->v:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "SPDY_STREAM_UNNECESSARY"

    const/16 v2, 0x16

    const/16 v3, 0x195

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->a:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->w:Lorg/android/agoo/net/channel/ChannelError;

    .line 42
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "DNS_REQUEST_FAILED"

    const/16 v2, 0x17

    const/16 v3, 0x13b0

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->x:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "DNS_PARSE_FAILED"

    const/16 v2, 0x18

    const/16 v3, 0x13b1

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->y:Lorg/android/agoo/net/channel/ChannelError;

    .line 43
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError;

    const-string v1, "DNS_NOT_FOUND"

    const/16 v2, 0x19

    const/16 v3, 0x13b2

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->z:Lorg/android/agoo/net/channel/ChannelError;

    .line 5
    const/16 v0, 0x1a

    new-array v0, v0, [Lorg/android/agoo/net/channel/ChannelError;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->a:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v1, v0, v5

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->b:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v1, v0, v6

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->c:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v1, v0, v7

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->d:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v1, v0, v8

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->e:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->f:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->g:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->h:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->i:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->j:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->k:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->l:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->m:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->n:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->o:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->p:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->q:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->r:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->s:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->t:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->u:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->v:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->w:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->x:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->y:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError;->z:Lorg/android/agoo/net/channel/ChannelError;

    aput-object v2, v0, v1

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError;->C:[Lorg/android/agoo/net/channel/ChannelError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError$Level;->b:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/android/agoo/net/channel/ChannelError;-><init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/android/agoo/net/channel/ChannelError$Level;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/android/agoo/net/channel/ChannelError$Level;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lorg/android/agoo/net/channel/ChannelError;->A:I

    .line 53
    iput-object p4, p0, Lorg/android/agoo/net/channel/ChannelError;->B:Lorg/android/agoo/net/channel/ChannelError$Level;

    .line 54
    return-void
.end method

.method public static get(I)Lorg/android/agoo/net/channel/ChannelError;
    .locals 1

    .prologue
    .line 85
    sparse-switch p0, :sswitch_data_0

    .line 99
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->s:Lorg/android/agoo/net/channel/ChannelError;

    :goto_0
    return-object v0

    .line 87
    :sswitch_0
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->p:Lorg/android/agoo/net/channel/ChannelError;

    goto :goto_0

    .line 89
    :sswitch_1
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->t:Lorg/android/agoo/net/channel/ChannelError;

    goto :goto_0

    .line 91
    :sswitch_2
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->v:Lorg/android/agoo/net/channel/ChannelError;

    goto :goto_0

    .line 93
    :sswitch_3
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->q:Lorg/android/agoo/net/channel/ChannelError;

    goto :goto_0

    .line 95
    :sswitch_4
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->w:Lorg/android/agoo/net/channel/ChannelError;

    goto :goto_0

    .line 97
    :sswitch_5
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->r:Lorg/android/agoo/net/channel/ChannelError;

    goto :goto_0

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x133 -> :sswitch_0
        0x190 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x195 -> :sswitch_4
        0x198 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getEasySpdy(I)Lorg/android/agoo/net/channel/ChannelError;
    .locals 1

    .prologue
    .line 69
    sparse-switch p0, :sswitch_data_0

    .line 79
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->i:Lorg/android/agoo/net/channel/ChannelError;

    :goto_0
    return-object v0

    .line 71
    :sswitch_0
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->l:Lorg/android/agoo/net/channel/ChannelError;

    goto :goto_0

    .line 73
    :sswitch_1
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->m:Lorg/android/agoo/net/channel/ChannelError;

    goto :goto_0

    .line 75
    :sswitch_2
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->k:Lorg/android/agoo/net/channel/ChannelError;

    goto :goto_0

    .line 77
    :sswitch_3
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->j:Lorg/android/agoo/net/channel/ChannelError;

    goto :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        -0x9c4 -> :sswitch_3
        -0x7ef -> :sswitch_1
        -0x7ee -> :sswitch_0
        -0x7d2 -> :sswitch_2
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelError;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lorg/android/agoo/net/channel/ChannelError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/net/channel/ChannelError;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/net/channel/ChannelError;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError;->C:[Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v0}, [Lorg/android/agoo/net/channel/ChannelError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/net/channel/ChannelError;

    return-object v0
.end method


# virtual methods
.method public getChannelLevel()Lorg/android/agoo/net/channel/ChannelError$Level;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/android/agoo/net/channel/ChannelError;->B:Lorg/android/agoo/net/channel/ChannelError$Level;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/android/agoo/net/channel/ChannelError;->A:I

    return v0
.end method
