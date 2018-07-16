.class Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/net/async/AsyncHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field final synthetic e:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;


# direct methods
.method private constructor <init>(Lorg/android/agoo/net/async/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->e:Lorg/android/agoo/net/async/AsyncHttpResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->a:I

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->b:Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->c:Ljava/util/Map;

    .line 214
    const-string v0, ""

    iput-object v0, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/android/agoo/net/async/AsyncHttpResponseHandler;Lorg/android/agoo/net/async/AsyncHttpResponseHandler$1;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;-><init>(Lorg/android/agoo/net/async/AsyncHttpResponseHandler;)V

    return-void
.end method
