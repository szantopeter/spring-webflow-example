/**
 * 
 */
package org.szanto.flow;

import java.io.IOException;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.webflow.engine.FlowExecutionExceptionHandler;
import org.springframework.webflow.engine.RequestControlContext;
import org.springframework.webflow.engine.ViewState;
import org.springframework.webflow.execution.FlowExecutionException;

/**
 * This solution can be found at http://forum.springframework.org/showpost.php?p=183397&postcount=7
 * @author pszanto
 * 
 */
public class ExceptionHandler implements FlowExecutionExceptionHandler {

	public boolean canHandle(FlowExecutionException ex) {
//		if (findBusinessException(ex) != null) {
//			return true;
//		} else {
//			return false;
//		}
		
		return true;
		
	}

	public void handle(FlowExecutionException ex, RequestControlContext context) {
		context.getMessageContext().addMessage(
				new MessageBuilder().error().source(null).defaultText(
						ex.getMessage()).build());

		Object testState = context.getCurrentState();

		if (testState instanceof ViewState) {
			ViewState viewState = (ViewState) testState;
			try {
				viewState.getViewFactory().getView(context).render();
			} catch (IOException e) {
				// Properly handle rendering errors here
			}
		}

	}

//	private MyBusinessException findBusinessException(FlowExecutionException ex) {
//		Throwable cause = ex.getCause();
//		while (cause != null) {
//			if (cause instanceof MyBusinessException) {
//				return (MyBusinessException) cause;
//			}
//			cause = cause.getCause();
//		}
//		return null;
//	}

}
