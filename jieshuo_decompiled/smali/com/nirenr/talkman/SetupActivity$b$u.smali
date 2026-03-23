.class Lcom/nirenr/talkman/SetupActivity$b$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/SetupActivity$b;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/SetupActivity$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/SetupActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$u;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$u;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-static {p1}, Lcom/nirenr/talkman/SetupActivity$b;->j(Lcom/nirenr/talkman/SetupActivity$b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$u;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-static {p1}, Lcom/nirenr/talkman/SetupActivity$b;->i(Lcom/nirenr/talkman/SetupActivity$b;)V

    :cond_1
    :goto_0
    return-void
.end method
