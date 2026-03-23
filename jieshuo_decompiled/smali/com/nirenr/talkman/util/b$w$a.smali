.class Lcom/nirenr/talkman/util/b$w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b$w;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/b$w;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b$w;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$w$a;->a:Lcom/nirenr/talkman/util/b$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$w$a;->a:Lcom/nirenr/talkman/util/b$w;

    iget-object v0, v0, Lcom/nirenr/talkman/util/b$w;->c:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    return-void
.end method
