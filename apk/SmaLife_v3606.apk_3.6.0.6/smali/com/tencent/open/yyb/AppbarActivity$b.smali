.class Lcom/tencent/open/yyb/AppbarActivity$b;
.super Landroid/os/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/yyb/AppbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/open/yyb/AppbarActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/open/yyb/AppbarActivity$a;)V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 682
    iput-object p1, p0, Lcom/tencent/open/yyb/AppbarActivity$b;->a:Lcom/tencent/open/yyb/AppbarActivity$a;

    .line 683
    return-void
.end method


# virtual methods
.method protected a([B)V
    .locals 1

    .prologue
    .line 736
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 737
    iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$b;->a:Lcom/tencent/open/yyb/AppbarActivity$a;

    invoke-interface {v0, p1}, Lcom/tencent/open/yyb/AppbarActivity$a;->a([B)V

    .line 738
    return-void
.end method

.method protected varargs a([Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 687
    .line 689
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 696
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 701
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 703
    :try_start_2
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3

    .line 710
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    .line 716
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 717
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 718
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 720
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 721
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 727
    :catch_0
    move-exception v0

    .line 729
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    .line 731
    :goto_1
    return-object v0

    .line 690
    :catch_1
    move-exception v0

    .line 691
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    .line 692
    goto :goto_1

    .line 697
    :catch_2
    move-exception v0

    .line 698
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 699
    goto :goto_1

    .line 704
    :catch_3
    move-exception v0

    .line 705
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    move-object v0, v1

    .line 706
    goto :goto_1

    .line 711
    :catch_4
    move-exception v0

    .line 712
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 713
    goto :goto_1

    .line 723
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 724
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 725
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 677
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/open/yyb/AppbarActivity$b;->a([Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 677
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/open/yyb/AppbarActivity$b;->a([B)V

    return-void
.end method
