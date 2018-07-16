.class Lcom/igexin/getuiext/service/e;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/service/d;


# direct methods
.method constructor <init>(Lcom/igexin/getuiext/service/d;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/service/e;->a:Lcom/igexin/getuiext/service/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    :try_start_0
    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/igexin/getuiext/util/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/getuiext/service/c;->a()Lcom/igexin/getuiext/service/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/igexin/getuiext/service/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lorg/apache/http/MethodNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/service/e;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
