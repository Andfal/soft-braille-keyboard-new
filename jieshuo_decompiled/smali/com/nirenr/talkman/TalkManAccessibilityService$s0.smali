.class Lcom/nirenr/talkman/TalkManAccessibilityService$s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->I3()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string p2, "no_storage"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0}, Lk2/b0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->D2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    return-void
.end method
