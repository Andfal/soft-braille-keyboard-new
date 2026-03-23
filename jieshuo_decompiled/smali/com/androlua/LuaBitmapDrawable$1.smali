.class Lcom/androlua/LuaBitmapDrawable$1;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaBitmapDrawable;->initHttp(Lcom/androlua/LuaContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaBitmapDrawable;

.field final synthetic val$context:Lcom/androlua/LuaContext;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/androlua/LuaBitmapDrawable;Lcom/androlua/LuaContext;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaBitmapDrawable$1;->this$0:Lcom/androlua/LuaBitmapDrawable;

    iput-object p2, p0, Lcom/androlua/LuaBitmapDrawable$1;->val$context:Lcom/androlua/LuaContext;

    iput-object p3, p0, Lcom/androlua/LuaBitmapDrawable$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaBitmapDrawable$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/androlua/LuaBitmapDrawable$1;->val$context:Lcom/androlua/LuaContext;

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable$1;->val$path:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/androlua/LuaBitmapDrawable;->getHttpBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaBitmapDrawable$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable$1;->this$0:Lcom/androlua/LuaBitmapDrawable;

    invoke-static {v0, p1}, Lcom/androlua/LuaBitmapDrawable;->e(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V

    return-void
.end method
