.class Lcom/igexin/getuiext/ui/promotion/o;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/ui/promotion/UrlImageView;


# direct methods
.method private constructor <init>(Lcom/igexin/getuiext/ui/promotion/UrlImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/ui/promotion/o;->a:Lcom/igexin/getuiext/ui/promotion/UrlImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/getuiext/ui/promotion/UrlImageView;Lcom/igexin/getuiext/ui/promotion/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igexin/getuiext/ui/promotion/o;-><init>(Lcom/igexin/getuiext/ui/promotion/UrlImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "GET"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/igexin/getuiext/util/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/apache/http/MethodNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lorg/apache/http/MethodNotSupportedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v2

    goto :goto_2

    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/igexin/getuiext/ui/promotion/p;

    invoke-direct {v0, p0, p1}, Lcom/igexin/getuiext/ui/promotion/p;-><init>(Lcom/igexin/getuiext/ui/promotion/o;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/o;->a:Lcom/igexin/getuiext/ui/promotion/UrlImageView;

    invoke-virtual {v1, v0}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/ui/promotion/o;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/ui/promotion/o;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
