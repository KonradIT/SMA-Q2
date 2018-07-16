.class public Lorg/android/agoo/net/async/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AsyncHttpResponseHandler"

.field protected static final c:I = 0x0

.field protected static final d:I = 0x1

.field protected static final e:I = 0x2

.field protected static final f:I = 0x3


# instance fields
.field private volatile b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->b:Landroid/os/Handler;

    .line 37
    new-instance v0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$1;-><init>(Lorg/android/agoo/net/async/AsyncHttpResponseHandler;)V

    iput-object v0, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->b:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method private final a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 197
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_1
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 207
    :cond_2
    return-object v1
.end method

.method private a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 98
    :try_start_0
    instance-of v0, p1, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;

    if-eqz v0, :cond_1

    .line 99
    check-cast p1, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;

    .line 100
    iget v0, p1, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->a:I

    .line 101
    iget-object v1, p1, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->c:Ljava/util/Map;

    .line 102
    iget-object v2, p1, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->d:Ljava/lang/String;

    .line 103
    const-string v3, "AsyncHttpResponseHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleMessage["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/message/proguard/aK;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 105
    invoke-virtual {p0, v1, v2}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    iget-object v4, p1, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->b:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3, v1, v2}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "AsyncHttpResponseHandler"

    const-string v2, "onHandleMessage"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    invoke-virtual {p0, v0, v6, v6}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    :try_start_1
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "onHandleMessage"

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "!result instanceof IResponse"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/aK;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "!result instanceof IResponse"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 162
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :try_start_1
    iput p1, v0, Landroid/os/Message;->what:I

    .line 164
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method final a()V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->b(Landroid/os/Message;)V

    .line 81
    return-void
.end method

.method final a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 124
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-virtual {p0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->onStart()V

    goto :goto_0

    .line 135
    :pswitch_3
    invoke-virtual {p0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->onFinish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->b(Landroid/os/Message;)V

    .line 77
    return-void
.end method

.method protected a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->onSuccess(Ljava/util/Map;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method final a(Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->b(Landroid/os/Message;)V

    .line 73
    return-void
.end method

.method final a(Lorg/apache/http/HttpResponse;)V
    .locals 3

    .prologue
    .line 175
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 176
    new-instance v1, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;-><init>(Lorg/android/agoo/net/async/AsyncHttpResponseHandler;Lorg/android/agoo/net/async/AsyncHttpResponseHandler$1;)V

    .line 177
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->b:Ljava/lang/String;

    .line 178
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->c:Ljava/util/Map;

    .line 179
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, v1, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->a:I

    .line 181
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 184
    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;->d:Ljava/lang/String;

    .line 186
    :cond_0
    invoke-virtual {p0, v1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->a(Lorg/android/agoo/net/async/AsyncHttpResponseHandler$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {p0, v0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->b(Landroid/os/Message;)V

    .line 85
    return-void
.end method

.method final b(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, v0, v0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1, p3}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public final onFinish()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final onStart()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onSuccess(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p2}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 65
    return-void
.end method
