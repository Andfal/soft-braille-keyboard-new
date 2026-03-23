.class Lcom/vivo/speechsdk/module/net/utils/a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/module/net/utils/a$e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/utils/a$e;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/utils/a$e;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/utils/a$e$a;->a:Lcom/vivo/speechsdk/module/net/utils/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/utils/a$e$a;->a:Lcom/vivo/speechsdk/module/net/utils/a$e;

    iget-object v1, v1, Lcom/vivo/speechsdk/module/net/utils/a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
