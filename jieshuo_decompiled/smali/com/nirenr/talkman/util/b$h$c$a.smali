.class Lcom/nirenr/talkman/util/b$h$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b$h$c;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/b$h$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b$h$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$h$c$a;->a:Lcom/nirenr/talkman/util/b$h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$h$c$a;->a:Lcom/nirenr/talkman/util/b$h$c;

    iget-object v0, v0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iget-object v0, v0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void
.end method
